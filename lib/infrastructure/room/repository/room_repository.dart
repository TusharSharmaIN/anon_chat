import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rumour/domain/core/error/api_failures.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/domain/room/entities/room_member.dart';
import 'package:rumour/domain/room/repository/i_room_repository.dart';
import 'package:rumour/infrastructure/room/datasource/room_local.dart';
import 'package:rumour/infrastructure/room/datasource/room_remote.dart';
import 'package:rumour/infrastructure/room/dtos/chat_message_dto.dart';
import 'package:rumour/infrastructure/room/dtos/room_identity_dto.dart';
import 'package:rumour/infrastructure/room/dtos/room_info_dto.dart';

class RoomRepository implements IRoomRepository {
  final RoomRemoteDataSource remote;
  final RoomLocalDataSource local;
  final FirebaseAuth firebaseAuth;
  final Random _random = Random();

  RoomRepository({
    required this.remote,
    required this.local,
    required this.firebaseAuth,
  });

  @override
  Future<Either<ApiFailure, RoomInfo>> joinRoom(String roomId) async {
    try {
      final user = await _getOrSignInUser();
      final exists = await remote.checkRoomExists(roomId);

      RoomInfoDto roomInfoDto;
      if (!exists) {
        roomInfoDto = await remote.createRoom(roomId, user.uid);
      } else {
        roomInfoDto = await remote.getRoomInfo(roomId);
      }

      final identityResult = await getOrCreateLocalIdentity(roomId);
      identityResult.fold((_) {}, (member) async {
        await remote.addOrUpdateMember(
          roomId: roomId,
          uid: member.uid.getOrCrash(),
          name: member.name.getOrCrash(),
        );
      });

      return right(roomInfoDto.toDomain());
    } catch (e) {
      return left(ApiFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, RoomMember>> getOrCreateLocalIdentity(
    String roomId,
  ) async {
    try {
      final user = await _getOrSignInUser();
      final dto = await local.get(roomId);

      if (dto != null && dto.uid.isNotEmpty && dto.name.isNotEmpty) {
        return right(dto.toDomain());
      }

      final takenNames = await _fetchTakenNames(roomId);
      final generatedName = _generateDisplayName(takenNames);

      final member = RoomMember(
        uid: StringValue(user.uid),
        name: StringValue(generatedName),
      );

      final identityDto = RoomIdentityDto.fromDomain(member);
      await local.set(roomId, identityDto);

      await remote.addOrUpdateMember(
        roomId: roomId,
        uid: member.uid.getOrCrash(),
        name: member.name.getOrCrash(),
      );

      return right(member);
    } catch (e) {
      return left(ApiFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> sendMessage({
    required String roomId,
    required ChatMessage message,
  }) async {
    try {
      final dto = ChatMessageDto.fromDomain(
        message.copyWith(createdAt: DateTimeValue(DateTime.now().toString())),
      );

      await remote.sendMessage(roomId: roomId, dto: dto);
      return right(unit);
    } catch (e) {
      return left(ApiFailure.serverError(e.toString()));
    }
  }

  @override
  Stream<Either<ApiFailure, List<ChatMessage>>> watchMessages(String roomId) {
    return remote.watchMessages(roomId).map((dtoList) {
      final messages = dtoList.map((e) => e.toDomain()).toList();
      return right<ApiFailure, List<ChatMessage>>(messages);
    });
  }

  Future<User> _getOrSignInUser() async {
    final current = firebaseAuth.currentUser;
    if (current != null) {
      return current;
    }
    final cred = await firebaseAuth.signInAnonymously();
    return cred.user!;
  }

  Future<Set<String>> _fetchTakenNames(String roomId) async {
    final snapshot = await remote.firestore
        .collection('rooms')
        .doc(roomId)
        .collection('members')
        .get();

    final names = snapshot.docs
        .map((d) => (d.data()['name'] as String?) ?? '')
        .where((n) => n.isNotEmpty)
        .toSet();

    return names;
  }

  String _generateDisplayName(Set<String> takenNames) {
    const adjectives = [
      'Brave',
      'Calm',
      'Silent',
      'Curious',
      'Gentle',
      'Bold',
      'Swift',
      'Lucky',
      'Quiet',
      'Mellow',
    ];

    const animals = [
      'Badger',
      'Fox',
      'Tiger',
      'Sparrow',
      'Panda',
      'Otter',
      'Wolf',
      'Falcon',
      'Hawk',
      'Whale',
    ];

    const maxAttempts = 20;
    String candidate = '';

    for (var i = 0; i < maxAttempts; i++) {
      final adj = adjectives[_random.nextInt(adjectives.length)];
      final animal = animals[_random.nextInt(animals.length)];
      candidate = '$adj $animal';
      if (!takenNames.contains(candidate)) {
        return candidate;
      }
    }

    return candidate.isNotEmpty
        ? candidate
        : '${adjectives.first} ${animals.first}';
  }
}
