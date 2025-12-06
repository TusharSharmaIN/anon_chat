// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_identity_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomIdentityDtoAdapter extends TypeAdapter<RoomIdentityDto> {
  @override
  final typeId = 91;

  @override
  RoomIdentityDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomIdentityDto(uid: fields[0] as String, name: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, RoomIdentityDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomIdentityDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomIdentityDto _$RoomIdentityDtoFromJson(Map<String, dynamic> json) =>
    _RoomIdentityDto(uid: json['uid'] as String, name: json['name'] as String);

Map<String, dynamic> _$RoomIdentityDtoToJson(_RoomIdentityDto instance) =>
    <String, dynamic>{'uid': instance.uid, 'name': instance.name};
