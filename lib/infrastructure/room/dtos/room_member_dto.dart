import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/room_member.dart';

part 'room_member_dto.freezed.dart';
part 'room_member_dto.g.dart';

@freezed
abstract class RoomMemberDto with _$RoomMemberDto {
  const RoomMemberDto._();

  const factory RoomMemberDto({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'name') required String name,
  }) = _RoomMemberDto;

  factory RoomMemberDto.fromJson(Map<String, dynamic> json) =>
      _$RoomMemberDtoFromJson(json);

  RoomMember toDomain() =>
      RoomMember(uid: StringValue(uid), name: StringValue(name));

  factory RoomMemberDto.fromDomain(RoomMember member) => RoomMemberDto(
    uid: member.uid.getOrCrash(),
    name: member.name.getOrCrash(),
  );
}
