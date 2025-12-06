import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rumour/infrastructure/room/dtos/chat_message_dto.dart';
import 'package:rumour/infrastructure/room/dtos/room_info_dto.dart';
import 'package:rumour/infrastructure/room/dtos/room_member_dto.dart';

class RoomRemoteDataSource {
  final FirebaseFirestore firestore;

  RoomRemoteDataSource({required this.firestore});

  Future<bool> checkRoomExists(String roomId) async {
    final doc = await firestore.collection('rooms').doc(roomId).get();
    return doc.exists;
  }

  Future<RoomInfoDto> createRoom(String roomId, String creatorUid) async {
    final roomMap = {
      'roomId': roomId,
      'createdByUid': creatorUid,
      'createdAt': FieldValue.serverTimestamp(),
    };

    await firestore.collection('rooms').doc(roomId).set(roomMap);

    // Fetch final server timestamp
    final snapshot = await firestore.collection('rooms').doc(roomId).get();

    return RoomInfoDto.fromJson(snapshot.data()!);
  }

  Future<RoomInfoDto> getRoomInfo(String roomId) async {
    final snapshot = await firestore.collection('rooms').doc(roomId).get();

    return RoomInfoDto.fromJson(snapshot.data()!);
  }

  Future<void> addOrUpdateMember({
    required String roomId,
    required String uid,
    required String name,
  }) async {
    final memberDto = RoomMemberDto(uid: uid, name: name);

    await firestore
        .collection('rooms')
        .doc(roomId)
        .collection('members')
        .doc(uid)
        .set(memberDto.toJson(), SetOptions(merge: true));
  }

  Future<void> sendMessage({
    required String roomId,
    required ChatMessageDto dto,
  }) async {
    await firestore.collection('rooms').doc(roomId).collection('messages').add({
      ...dto.toJson(),
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<List<ChatMessageDto>> watchMessages(String roomId) {
    return firestore
        .collection('rooms')
        .doc(roomId)
        .collection('messages')
        .orderBy('createdAt', descending: false)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => ChatMessageDto.fromJson(doc.data()))
              .toList(),
        );
  }
}
