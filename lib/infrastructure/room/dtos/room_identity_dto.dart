import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/room_member.dart';

part 'room_identity_dto.freezed.dart';
part 'room_identity_dto.g.dart';

@HiveType(typeId: 91)
@freezed
abstract class RoomIdentityDto with _$RoomIdentityDto {
  const RoomIdentityDto._();

  const factory RoomIdentityDto({
    @HiveField(0) required String uid,
    @HiveField(1) required String name,
  }) = _RoomIdentityDto;

  RoomMember toDomain() =>
      RoomMember(uid: StringValue(uid), name: StringValue(name));

  factory RoomIdentityDto.fromDomain(RoomMember member) => RoomIdentityDto(
    uid: member.uid.getOrCrash(),
    name: member.name.getOrCrash(),
  );

  factory RoomIdentityDto.fromJson(Map<String, dynamic> json) =>
      _$RoomIdentityDtoFromJson(json);
}
