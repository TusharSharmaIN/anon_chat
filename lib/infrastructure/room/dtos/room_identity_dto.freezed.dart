// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_identity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomIdentityDto {

@HiveField(0) String get uid;@HiveField(1) String get name;
/// Create a copy of RoomIdentityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomIdentityDtoCopyWith<RoomIdentityDto> get copyWith => _$RoomIdentityDtoCopyWithImpl<RoomIdentityDto>(this as RoomIdentityDto, _$identity);

  /// Serializes this RoomIdentityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomIdentityDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name);

@override
String toString() {
  return 'RoomIdentityDto(uid: $uid, name: $name)';
}


}

/// @nodoc
abstract mixin class $RoomIdentityDtoCopyWith<$Res>  {
  factory $RoomIdentityDtoCopyWith(RoomIdentityDto value, $Res Function(RoomIdentityDto) _then) = _$RoomIdentityDtoCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String uid,@HiveField(1) String name
});




}
/// @nodoc
class _$RoomIdentityDtoCopyWithImpl<$Res>
    implements $RoomIdentityDtoCopyWith<$Res> {
  _$RoomIdentityDtoCopyWithImpl(this._self, this._then);

  final RoomIdentityDto _self;
  final $Res Function(RoomIdentityDto) _then;

/// Create a copy of RoomIdentityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomIdentityDto].
extension RoomIdentityDtoPatterns on RoomIdentityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomIdentityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomIdentityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomIdentityDto value)  $default,){
final _that = this;
switch (_that) {
case _RoomIdentityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomIdentityDto value)?  $default,){
final _that = this;
switch (_that) {
case _RoomIdentityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String uid, @HiveField(1)  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomIdentityDto() when $default != null:
return $default(_that.uid,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String uid, @HiveField(1)  String name)  $default,) {final _that = this;
switch (_that) {
case _RoomIdentityDto():
return $default(_that.uid,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String uid, @HiveField(1)  String name)?  $default,) {final _that = this;
switch (_that) {
case _RoomIdentityDto() when $default != null:
return $default(_that.uid,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomIdentityDto extends RoomIdentityDto {
  const _RoomIdentityDto({@HiveField(0) required this.uid, @HiveField(1) required this.name}): super._();
  factory _RoomIdentityDto.fromJson(Map<String, dynamic> json) => _$RoomIdentityDtoFromJson(json);

@override@HiveField(0) final  String uid;
@override@HiveField(1) final  String name;

/// Create a copy of RoomIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomIdentityDtoCopyWith<_RoomIdentityDto> get copyWith => __$RoomIdentityDtoCopyWithImpl<_RoomIdentityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomIdentityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomIdentityDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name);

@override
String toString() {
  return 'RoomIdentityDto(uid: $uid, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RoomIdentityDtoCopyWith<$Res> implements $RoomIdentityDtoCopyWith<$Res> {
  factory _$RoomIdentityDtoCopyWith(_RoomIdentityDto value, $Res Function(_RoomIdentityDto) _then) = __$RoomIdentityDtoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String uid,@HiveField(1) String name
});




}
/// @nodoc
class __$RoomIdentityDtoCopyWithImpl<$Res>
    implements _$RoomIdentityDtoCopyWith<$Res> {
  __$RoomIdentityDtoCopyWithImpl(this._self, this._then);

  final _RoomIdentityDto _self;
  final $Res Function(_RoomIdentityDto) _then;

/// Create a copy of RoomIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,}) {
  return _then(_RoomIdentityDto(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
