import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/room_info.dart';
import 'package:rumour/infrastructure/core/utils/timestamp_converter.dart';

part 'room_info_dto.freezed.dart';
part 'room_info_dto.g.dart';

@freezed
abstract class RoomInfoDto with _$RoomInfoDto {
  const RoomInfoDto._();

  const factory RoomInfoDto({
    @JsonKey(name: 'roomId') required String roomId,
    @JsonKey(name: 'createdByUid') required String createdByUid,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    required Timestamp createdAt,
  }) = _RoomInfoDto;

  factory RoomInfoDto.fromJson(Map<String, dynamic> json) =>
      _$RoomInfoDtoFromJson(json);

  RoomInfo toDomain() => RoomInfo(
    roomId: StringValue(roomId),
    createdByUid: StringValue(createdByUid),
    createdAt: DateTimeValue(createdAt.toDate().toIso8601String()),
  );

  factory RoomInfoDto.fromDomain(RoomInfo info) => RoomInfoDto(
    roomId: info.roomId.getOrCrash(),
    createdByUid: info.createdByUid.getOrCrash(),
    createdAt: Timestamp.fromDate(info.createdAt.dateTime),
  );
}
