part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.init() = _Init;

  const factory RoomEvent.onRoomIdEntered({
    required RoomBlocFieldType field,
    required String value,
  }) = _OnRoomIdEntered;

  const factory RoomEvent.watchMessagesStarted() = _WatchMessagesStarted;

  const factory RoomEvent.messagesReceived({
    required Either<ApiFailure, List<ChatMessage>> failureOrMessages,
  }) = _MessagesReceived;

  const factory RoomEvent.sendMessagePressed({required String text}) =
      _SendMessagePressed;
}

enum RoomBlocFieldType { roomId }
