import 'package:dartz/dartz.dart';
import 'package:rumour/domain/core/error/api_failures.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/domain/room/entities/room_member.dart';

abstract class IRoomRepository {
  Future<Either<ApiFailure, (RoomInfo, RoomMember)>> joinRoom(String roomId);

  Future<Either<ApiFailure, RoomMember>> getOrCreateLocalIdentity(
    String roomId,
  );

  Future<Either<ApiFailure, Unit>> sendMessage({
    required String roomId,
    required ChatMessage message,
  });

  /// Real-time message stream (simple first — pagination later)
  Stream<Either<ApiFailure, List<ChatMessage>>> watchMessages(String roomId);
}
