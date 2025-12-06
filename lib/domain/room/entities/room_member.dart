import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';

part 'room_member.freezed.dart';

@freezed
abstract class RoomMember with _$RoomMember {
  const RoomMember._();

  const factory RoomMember({
    required StringValue uid,
    required StringValue name,
    required DateTimeValue joinedAt,
  }) = _RoomMember;

  factory RoomMember.empty() => RoomMember(
    uid: StringValue(''),
    name: StringValue(''),
    joinedAt: DateTimeValue(''),
  );
}
