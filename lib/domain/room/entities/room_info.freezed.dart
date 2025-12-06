// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomInfo {

 StringValue get roomId; StringValue get createdByUid; DateTimeValue get createdAt;
/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<RoomInfo> get copyWith => _$RoomInfoCopyWithImpl<RoomInfo>(this as RoomInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomInfo&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdByUid, createdByUid) || other.createdByUid == createdByUid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,createdByUid,createdAt);

@override
String toString() {
  return 'RoomInfo(roomId: $roomId, createdByUid: $createdByUid, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RoomInfoCopyWith<$Res>  {
  factory $RoomInfoCopyWith(RoomInfo value, $Res Function(RoomInfo) _then) = _$RoomInfoCopyWithImpl;
@useResult
$Res call({
 StringValue roomId, StringValue createdByUid, DateTimeValue createdAt
});




}
/// @nodoc
class _$RoomInfoCopyWithImpl<$Res>
    implements $RoomInfoCopyWith<$Res> {
  _$RoomInfoCopyWithImpl(this._self, this._then);

  final RoomInfo _self;
  final $Res Function(RoomInfo) _then;

/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? createdByUid = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as StringValue,createdByUid: null == createdByUid ? _self.createdByUid : createdByUid // ignore: cast_nullable_to_non_nullable
as StringValue,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTimeValue,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomInfo].
extension RoomInfoPatterns on RoomInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomInfo value)  $default,){
final _that = this;
switch (_that) {
case _RoomInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StringValue roomId,  StringValue createdByUid,  DateTimeValue createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StringValue roomId,  StringValue createdByUid,  DateTimeValue createdAt)  $default,) {final _that = this;
switch (_that) {
case _RoomInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StringValue roomId,  StringValue createdByUid,  DateTimeValue createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
return $default(_that.roomId,_that.createdByUid,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _RoomInfo extends RoomInfo {
  const _RoomInfo({required this.roomId, required this.createdByUid, required this.createdAt}): super._();
  

@override final  StringValue roomId;
@override final  StringValue createdByUid;
@override final  DateTimeValue createdAt;

/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomInfoCopyWith<_RoomInfo> get copyWith => __$RoomInfoCopyWithImpl<_RoomInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomInfo&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.createdByUid, createdByUid) || other.createdByUid == createdByUid)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,createdByUid,createdAt);

@override
String toString() {
  return 'RoomInfo(roomId: $roomId, createdByUid: $createdByUid, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RoomInfoCopyWith<$Res> implements $RoomInfoCopyWith<$Res> {
  factory _$RoomInfoCopyWith(_RoomInfo value, $Res Function(_RoomInfo) _then) = __$RoomInfoCopyWithImpl;
@override @useResult
$Res call({
 StringValue roomId, StringValue createdByUid, DateTimeValue createdAt
});




}
/// @nodoc
class __$RoomInfoCopyWithImpl<$Res>
    implements _$RoomInfoCopyWith<$Res> {
  __$RoomInfoCopyWithImpl(this._self, this._then);

  final _RoomInfo _self;
  final $Res Function(_RoomInfo) _then;

/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? createdByUid = null,Object? createdAt = null,}) {
  return _then(_RoomInfo(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as StringValue,createdByUid: null == createdByUid ? _self.createdByUid : createdByUid // ignore: cast_nullable_to_non_nullable
as StringValue,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTimeValue,
  ));
}


}

// dart format on
