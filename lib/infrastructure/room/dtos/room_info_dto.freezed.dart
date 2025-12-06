// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomInfoDto {

@JsonKey(name: 'roomId') String get roomId;@JsonKey(name: 'createdByUid') String get createdByUid;@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp get createdAt;
/// Create a copy of RoomInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomInfoDtoCopyWith<RoomInfoDto> get copyWith => _$RoomInfoDtoCopyWithImpl<RoomInfoDto>(this as RoomInfoDto, _$identity);

  /// Serializes this RoomInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomInfoDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdByUid, createdByUid) || other.createdByUid == createdByUid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,createdByUid,createdAt);

@override
String toString() {
  return 'RoomInfoDto(roomId: $roomId, createdByUid: $createdByUid, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RoomInfoDtoCopyWith<$Res>  {
  factory $RoomInfoDtoCopyWith(RoomInfoDto value, $Res Function(RoomInfoDto) _then) = _$RoomInfoDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'roomId') String roomId,@JsonKey(name: 'createdByUid') String createdByUid,@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp createdAt
});




}
/// @nodoc
class _$RoomInfoDtoCopyWithImpl<$Res>
    implements $RoomInfoDtoCopyWith<$Res> {
  _$RoomInfoDtoCopyWithImpl(this._self, this._then);

  final RoomInfoDto _self;
  final $Res Function(RoomInfoDto) _then;

/// Create a copy of RoomInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? createdByUid = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,createdByUid: null == createdByUid ? _self.createdByUid : createdByUid // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomInfoDto].
extension RoomInfoDtoPatterns on RoomInfoDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomInfoDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _RoomInfoDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _RoomInfoDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomId')  String roomId, @JsonKey(name: 'createdByUid')  String createdByUid, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomInfoDto() when $default != null:
return $default(_that.roomId,_that.createdByUid,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomId')  String roomId, @JsonKey(name: 'createdByUid')  String createdByUid, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)  $default,) {final _that = this;
switch (_that) {
case _RoomInfoDto():
return $default(_that.roomId,_that.createdByUid,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'roomId')  String roomId, @JsonKey(name: 'createdByUid')  String createdByUid, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RoomInfoDto() when $default != null:
return $default(_that.roomId,_that.createdByUid,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomInfoDto extends RoomInfoDto {
  const _RoomInfoDto({@JsonKey(name: 'roomId') required this.roomId, @JsonKey(name: 'createdByUid') required this.createdByUid, @TimestampConverter()@JsonKey(name: 'createdAt') required this.createdAt}): super._();
  factory _RoomInfoDto.fromJson(Map<String, dynamic> json) => _$RoomInfoDtoFromJson(json);

@override@JsonKey(name: 'roomId') final  String roomId;
@override@JsonKey(name: 'createdByUid') final  String createdByUid;
@override@TimestampConverter()@JsonKey(name: 'createdAt') final  Timestamp createdAt;

/// Create a copy of RoomInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomInfoDtoCopyWith<_RoomInfoDto> get copyWith => __$RoomInfoDtoCopyWithImpl<_RoomInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomInfoDto&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdByUid, createdByUid) || other.createdByUid == createdByUid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomId,createdByUid,createdAt);

@override
String toString() {
  return 'RoomInfoDto(roomId: $roomId, createdByUid: $createdByUid, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RoomInfoDtoCopyWith<$Res> implements $RoomInfoDtoCopyWith<$Res> {
  factory _$RoomInfoDtoCopyWith(_RoomInfoDto value, $Res Function(_RoomInfoDto) _then) = __$RoomInfoDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'roomId') String roomId,@JsonKey(name: 'createdByUid') String createdByUid,@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp createdAt
});




}
/// @nodoc
class __$RoomInfoDtoCopyWithImpl<$Res>
    implements _$RoomInfoDtoCopyWith<$Res> {
  __$RoomInfoDtoCopyWithImpl(this._self, this._then);

  final _RoomInfoDto _self;
  final $Res Function(_RoomInfoDto) _then;

/// Create a copy of RoomInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? createdByUid = null,Object? createdAt = null,}) {
  return _then(_RoomInfoDto(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,createdByUid: null == createdByUid ? _self.createdByUid : createdByUid // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp,
  ));
}


}

// dart format on
