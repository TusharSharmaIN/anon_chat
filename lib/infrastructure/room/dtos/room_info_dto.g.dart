// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomInfoDto _$RoomInfoDtoFromJson(Map<String, dynamic> json) => _RoomInfoDto(
  roomId: json['roomId'] as String,
  createdByUid: json['createdByUid'] as String,
  createdAt: const TimestampConverter().fromJson(json['createdAt']),
);

Map<String, dynamic> _$RoomInfoDtoToJson(_RoomInfoDto instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'createdByUid': instance.createdByUid,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
