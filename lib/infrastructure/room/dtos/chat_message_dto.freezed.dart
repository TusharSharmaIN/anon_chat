// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageDto {

@JsonKey(name: 'messageId') String get messageId;@JsonKey(name: 'text') String get text;@JsonKey(name: 'senderUid') String get senderUid;@JsonKey(name: 'senderName') String get senderName;@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp get createdAt;
/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<ChatMessageDto> get copyWith => _$ChatMessageDtoCopyWithImpl<ChatMessageDto>(this as ChatMessageDto, _$identity);

  /// Serializes this ChatMessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.senderUid, senderUid) || other.senderUid == senderUid)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,text,senderUid,senderName,createdAt);

@override
String toString() {
  return 'ChatMessageDto(messageId: $messageId, text: $text, senderUid: $senderUid, senderName: $senderName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ChatMessageDtoCopyWith<$Res>  {
  factory $ChatMessageDtoCopyWith(ChatMessageDto value, $Res Function(ChatMessageDto) _then) = _$ChatMessageDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'messageId') String messageId,@JsonKey(name: 'text') String text,@JsonKey(name: 'senderUid') String senderUid,@JsonKey(name: 'senderName') String senderName,@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp createdAt
});




}
/// @nodoc
class _$ChatMessageDtoCopyWithImpl<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  _$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final ChatMessageDto _self;
  final $Res Function(ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? text = null,Object? senderUid = null,Object? senderName = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,senderUid: null == senderUid ? _self.senderUid : senderUid // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageDto].
extension ChatMessageDtoPatterns on ChatMessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'messageId')  String messageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'senderUid')  String senderUid, @JsonKey(name: 'senderName')  String senderName, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
return $default(_that.messageId,_that.text,_that.senderUid,_that.senderName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'messageId')  String messageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'senderUid')  String senderUid, @JsonKey(name: 'senderName')  String senderName, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto():
return $default(_that.messageId,_that.text,_that.senderUid,_that.senderName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'messageId')  String messageId, @JsonKey(name: 'text')  String text, @JsonKey(name: 'senderUid')  String senderUid, @JsonKey(name: 'senderName')  String senderName, @TimestampConverter()@JsonKey(name: 'createdAt')  Timestamp createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
return $default(_that.messageId,_that.text,_that.senderUid,_that.senderName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageDto extends ChatMessageDto {
  const _ChatMessageDto({@JsonKey(name: 'messageId') required this.messageId, @JsonKey(name: 'text') required this.text, @JsonKey(name: 'senderUid') required this.senderUid, @JsonKey(name: 'senderName') required this.senderName, @TimestampConverter()@JsonKey(name: 'createdAt') required this.createdAt}): super._();
  factory _ChatMessageDto.fromJson(Map<String, dynamic> json) => _$ChatMessageDtoFromJson(json);

@override@JsonKey(name: 'messageId') final  String messageId;
@override@JsonKey(name: 'text') final  String text;
@override@JsonKey(name: 'senderUid') final  String senderUid;
@override@JsonKey(name: 'senderName') final  String senderName;
@override@TimestampConverter()@JsonKey(name: 'createdAt') final  Timestamp createdAt;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith => __$ChatMessageDtoCopyWithImpl<_ChatMessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageDto&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.text, text) || other.text == text)&&(identical(other.senderUid, senderUid) || other.senderUid == senderUid)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,text,senderUid,senderName,createdAt);

@override
String toString() {
  return 'ChatMessageDto(messageId: $messageId, text: $text, senderUid: $senderUid, senderName: $senderName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageDtoCopyWith<$Res> implements $ChatMessageDtoCopyWith<$Res> {
  factory _$ChatMessageDtoCopyWith(_ChatMessageDto value, $Res Function(_ChatMessageDto) _then) = __$ChatMessageDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'messageId') String messageId,@JsonKey(name: 'text') String text,@JsonKey(name: 'senderUid') String senderUid,@JsonKey(name: 'senderName') String senderName,@TimestampConverter()@JsonKey(name: 'createdAt') Timestamp createdAt
});




}
/// @nodoc
class __$ChatMessageDtoCopyWithImpl<$Res>
    implements _$ChatMessageDtoCopyWith<$Res> {
  __$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessageDto _self;
  final $Res Function(_ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? text = null,Object? senderUid = null,Object? senderName = null,Object? createdAt = null,}) {
  return _then(_ChatMessageDto(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,senderUid: null == senderUid ? _self.senderUid : senderUid // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp,
  ));
}


}

// dart format on
