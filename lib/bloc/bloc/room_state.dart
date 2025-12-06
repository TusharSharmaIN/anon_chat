part of 'room_bloc.dart';

@freezed
abstract class RoomState with _$RoomState {
  const RoomState._();

  const factory RoomState({
    required String roomId,
    required bool roomJoined,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _RoomState;

  factory RoomState.initial() =>
      RoomState(roomId: '', roomJoined: false, apiFailureOrSuccess: none());
}
