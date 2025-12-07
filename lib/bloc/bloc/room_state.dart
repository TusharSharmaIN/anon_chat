part of 'room_bloc.dart';

@freezed
abstract class RoomState with _$RoomState {
  const RoomState._();

  const factory RoomState({
    required String roomId,
    required bool roomJoined,
    required bool isLoading,
    required RoomInfo roomInfo,
    required RoomMember currentIdentity,
    required List<ChatMessage> messages,
    required bool hasMore,
    required bool isLoadingMore,
    required ChatMessage oldestMessage,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _RoomState;

  factory RoomState.initial() => RoomState(
    roomId: '',
    roomJoined: false,
    isLoading: false,
    roomInfo: RoomInfo.empty(),
    currentIdentity: RoomMember.empty(),
    messages: const <ChatMessage>[],
    hasMore: false,
    isLoadingMore: false,
    oldestMessage: ChatMessage.empty(),
    apiFailureOrSuccess: none(),
  );
}
