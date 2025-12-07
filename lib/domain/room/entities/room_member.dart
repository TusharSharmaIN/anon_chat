import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';

part 'room_member.freezed.dart';

@freezed
abstract class RoomMember with _$RoomMember {
  const RoomMember._();

  const factory RoomMember({
    required StringValue uid,
    required StringValue name,
  }) = _RoomMember;

  factory RoomMember.empty() =>
      RoomMember(uid: StringValue(''), name: StringValue(''));

  String get displayName {
    final raw = name.getValue();
    if (raw.isEmpty) return '';
    return raw.replaceAllMapped(
      RegExp(r'(?<!^)([A-Z])'),
      (m) => ' ${m.group(1)}',
    );
  }
}
