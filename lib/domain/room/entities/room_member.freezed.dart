// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomMember {

 StringValue get uid; StringValue get name; DateTimeValue get joinedAt;
/// Create a copy of RoomMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomMemberCopyWith<RoomMember> get copyWith => _$RoomMemberCopyWithImpl<RoomMember>(this as RoomMember, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomMember&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,joinedAt);

@override
String toString() {
  return 'RoomMember(uid: $uid, name: $name, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $RoomMemberCopyWith<$Res>  {
  factory $RoomMemberCopyWith(RoomMember value, $Res Function(RoomMember) _then) = _$RoomMemberCopyWithImpl;
@useResult
$Res call({
 StringValue uid, StringValue name, DateTimeValue joinedAt
});




}
/// @nodoc
class _$RoomMemberCopyWithImpl<$Res>
    implements $RoomMemberCopyWith<$Res> {
  _$RoomMemberCopyWithImpl(this._self, this._then);

  final RoomMember _self;
  final $Res Function(RoomMember) _then;

/// Create a copy of RoomMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as StringValue,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringValue,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTimeValue,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomMember].
extension RoomMemberPatterns on RoomMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomMember value)  $default,){
final _that = this;
switch (_that) {
case _RoomMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomMember value)?  $default,){
final _that = this;
switch (_that) {
case _RoomMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StringValue uid,  StringValue name,  DateTimeValue joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomMember() when $default != null:
return $default(_that.uid,_that.name,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StringValue uid,  StringValue name,  DateTimeValue joinedAt)  $default,) {final _that = this;
switch (_that) {
case _RoomMember():
return $default(_that.uid,_that.name,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StringValue uid,  StringValue name,  DateTimeValue joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _RoomMember() when $default != null:
return $default(_that.uid,_that.name,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RoomMember extends RoomMember {
  const _RoomMember({required this.uid, required this.name, required this.joinedAt}): super._();
  

@override final  StringValue uid;
@override final  StringValue name;
@override final  DateTimeValue joinedAt;

/// Create a copy of RoomMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomMemberCopyWith<_RoomMember> get copyWith => __$RoomMemberCopyWithImpl<_RoomMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomMember&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}


@override
int get hashCode => Object.hash(runtimeType,uid,name,joinedAt);

@override
String toString() {
  return 'RoomMember(uid: $uid, name: $name, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$RoomMemberCopyWith<$Res> implements $RoomMemberCopyWith<$Res> {
  factory _$RoomMemberCopyWith(_RoomMember value, $Res Function(_RoomMember) _then) = __$RoomMemberCopyWithImpl;
@override @useResult
$Res call({
 StringValue uid, StringValue name, DateTimeValue joinedAt
});




}
/// @nodoc
class __$RoomMemberCopyWithImpl<$Res>
    implements _$RoomMemberCopyWith<$Res> {
  __$RoomMemberCopyWithImpl(this._self, this._then);

  final _RoomMember _self;
  final $Res Function(_RoomMember) _then;

/// Create a copy of RoomMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? joinedAt = null,}) {
  return _then(_RoomMember(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as StringValue,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringValue,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTimeValue,
  ));
}


}

// dart format on
