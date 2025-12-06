part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.init() = _Init;

  const factory RoomEvent.onRoomIdEntered({
    required RoomBlocFieldType field,
    required String value,
  }) = _OnRoomIdEntered;
}

enum RoomBlocFieldType { roomId }
