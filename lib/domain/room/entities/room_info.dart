import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';

part 'room_info.freezed.dart';

@freezed
abstract class RoomInfo with _$RoomInfo {
  const RoomInfo._();

  const factory RoomInfo({
    required StringValue roomId,
    required StringValue createdByUid,
    required DateTimeValue createdAt,
  }) = _RoomInfo;

  factory RoomInfo.empty() => RoomInfo(
    roomId: StringValue(''),
    createdByUid: StringValue(''),
    createdAt: DateTimeValue(''),
  );
}
