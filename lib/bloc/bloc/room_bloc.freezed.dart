// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent()';
}


}

/// @nodoc
class $RoomEventCopyWith<$Res>  {
$RoomEventCopyWith(RoomEvent _, $Res Function(RoomEvent) __);
}


/// Adds pattern-matching-related methods to [RoomEvent].
extension RoomEventPatterns on RoomEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _OnRoomIdEntered value)?  onRoomIdEntered,TResult Function( _WatchMessagesStarted value)?  watchMessagesStarted,TResult Function( _MessagesReceived value)?  messagesReceived,TResult Function( _SendMessagePressed value)?  sendMessagePressed,TResult Function( _LoadMoreMessages value)?  loadMoreMessages,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _OnRoomIdEntered() when onRoomIdEntered != null:
return onRoomIdEntered(_that);case _WatchMessagesStarted() when watchMessagesStarted != null:
return watchMessagesStarted(_that);case _MessagesReceived() when messagesReceived != null:
return messagesReceived(_that);case _SendMessagePressed() when sendMessagePressed != null:
return sendMessagePressed(_that);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _OnRoomIdEntered value)  onRoomIdEntered,required TResult Function( _WatchMessagesStarted value)  watchMessagesStarted,required TResult Function( _MessagesReceived value)  messagesReceived,required TResult Function( _SendMessagePressed value)  sendMessagePressed,required TResult Function( _LoadMoreMessages value)  loadMoreMessages,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _OnRoomIdEntered():
return onRoomIdEntered(_that);case _WatchMessagesStarted():
return watchMessagesStarted(_that);case _MessagesReceived():
return messagesReceived(_that);case _SendMessagePressed():
return sendMessagePressed(_that);case _LoadMoreMessages():
return loadMoreMessages(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _OnRoomIdEntered value)?  onRoomIdEntered,TResult? Function( _WatchMessagesStarted value)?  watchMessagesStarted,TResult? Function( _MessagesReceived value)?  messagesReceived,TResult? Function( _SendMessagePressed value)?  sendMessagePressed,TResult? Function( _LoadMoreMessages value)?  loadMoreMessages,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _OnRoomIdEntered() when onRoomIdEntered != null:
return onRoomIdEntered(_that);case _WatchMessagesStarted() when watchMessagesStarted != null:
return watchMessagesStarted(_that);case _MessagesReceived() when messagesReceived != null:
return messagesReceived(_that);case _SendMessagePressed() when sendMessagePressed != null:
return sendMessagePressed(_that);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( RoomBlocFieldType field,  String value)?  onRoomIdEntered,TResult Function()?  watchMessagesStarted,TResult Function( String roomId,  Either<ApiFailure, List<ChatMessage>> failureOrMessages)?  messagesReceived,TResult Function( String text)?  sendMessagePressed,TResult Function()?  loadMoreMessages,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _OnRoomIdEntered() when onRoomIdEntered != null:
return onRoomIdEntered(_that.field,_that.value);case _WatchMessagesStarted() when watchMessagesStarted != null:
return watchMessagesStarted();case _MessagesReceived() when messagesReceived != null:
return messagesReceived(_that.roomId,_that.failureOrMessages);case _SendMessagePressed() when sendMessagePressed != null:
return sendMessagePressed(_that.text);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( RoomBlocFieldType field,  String value)  onRoomIdEntered,required TResult Function()  watchMessagesStarted,required TResult Function( String roomId,  Either<ApiFailure, List<ChatMessage>> failureOrMessages)  messagesReceived,required TResult Function( String text)  sendMessagePressed,required TResult Function()  loadMoreMessages,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _OnRoomIdEntered():
return onRoomIdEntered(_that.field,_that.value);case _WatchMessagesStarted():
return watchMessagesStarted();case _MessagesReceived():
return messagesReceived(_that.roomId,_that.failureOrMessages);case _SendMessagePressed():
return sendMessagePressed(_that.text);case _LoadMoreMessages():
return loadMoreMessages();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( RoomBlocFieldType field,  String value)?  onRoomIdEntered,TResult? Function()?  watchMessagesStarted,TResult? Function( String roomId,  Either<ApiFailure, List<ChatMessage>> failureOrMessages)?  messagesReceived,TResult? Function( String text)?  sendMessagePressed,TResult? Function()?  loadMoreMessages,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _OnRoomIdEntered() when onRoomIdEntered != null:
return onRoomIdEntered(_that.field,_that.value);case _WatchMessagesStarted() when watchMessagesStarted != null:
return watchMessagesStarted();case _MessagesReceived() when messagesReceived != null:
return messagesReceived(_that.roomId,_that.failureOrMessages);case _SendMessagePressed() when sendMessagePressed != null:
return sendMessagePressed(_that.text);case _LoadMoreMessages() when loadMoreMessages != null:
return loadMoreMessages();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements RoomEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent.init()';
}


}




/// @nodoc


class _OnRoomIdEntered implements RoomEvent {
  const _OnRoomIdEntered({required this.field, required this.value});
  

 final  RoomBlocFieldType field;
 final  String value;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnRoomIdEnteredCopyWith<_OnRoomIdEntered> get copyWith => __$OnRoomIdEnteredCopyWithImpl<_OnRoomIdEntered>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnRoomIdEntered&&(identical(other.field, field) || other.field == field)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,field,value);

@override
String toString() {
  return 'RoomEvent.onRoomIdEntered(field: $field, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OnRoomIdEnteredCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory _$OnRoomIdEnteredCopyWith(_OnRoomIdEntered value, $Res Function(_OnRoomIdEntered) _then) = __$OnRoomIdEnteredCopyWithImpl;
@useResult
$Res call({
 RoomBlocFieldType field, String value
});




}
/// @nodoc
class __$OnRoomIdEnteredCopyWithImpl<$Res>
    implements _$OnRoomIdEnteredCopyWith<$Res> {
  __$OnRoomIdEnteredCopyWithImpl(this._self, this._then);

  final _OnRoomIdEntered _self;
  final $Res Function(_OnRoomIdEntered) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? value = null,}) {
  return _then(_OnRoomIdEntered(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as RoomBlocFieldType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _WatchMessagesStarted implements RoomEvent {
  const _WatchMessagesStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchMessagesStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent.watchMessagesStarted()';
}


}




/// @nodoc


class _MessagesReceived implements RoomEvent {
  const _MessagesReceived({required this.roomId, required this.failureOrMessages});
  

 final  String roomId;
 final  Either<ApiFailure, List<ChatMessage>> failureOrMessages;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesReceivedCopyWith<_MessagesReceived> get copyWith => __$MessagesReceivedCopyWithImpl<_MessagesReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesReceived&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.failureOrMessages, failureOrMessages) || other.failureOrMessages == failureOrMessages));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,failureOrMessages);

@override
String toString() {
  return 'RoomEvent.messagesReceived(roomId: $roomId, failureOrMessages: $failureOrMessages)';
}


}

/// @nodoc
abstract mixin class _$MessagesReceivedCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory _$MessagesReceivedCopyWith(_MessagesReceived value, $Res Function(_MessagesReceived) _then) = __$MessagesReceivedCopyWithImpl;
@useResult
$Res call({
 String roomId, Either<ApiFailure, List<ChatMessage>> failureOrMessages
});




}
/// @nodoc
class __$MessagesReceivedCopyWithImpl<$Res>
    implements _$MessagesReceivedCopyWith<$Res> {
  __$MessagesReceivedCopyWithImpl(this._self, this._then);

  final _MessagesReceived _self;
  final $Res Function(_MessagesReceived) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? failureOrMessages = null,}) {
  return _then(_MessagesReceived(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,failureOrMessages: null == failureOrMessages ? _self.failureOrMessages : failureOrMessages // ignore: cast_nullable_to_non_nullable
as Either<ApiFailure, List<ChatMessage>>,
  ));
}


}

/// @nodoc


class _SendMessagePressed implements RoomEvent {
  const _SendMessagePressed({required this.text});
  

 final  String text;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessagePressedCopyWith<_SendMessagePressed> get copyWith => __$SendMessagePressedCopyWithImpl<_SendMessagePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessagePressed&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'RoomEvent.sendMessagePressed(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SendMessagePressedCopyWith<$Res> implements $RoomEventCopyWith<$Res> {
  factory _$SendMessagePressedCopyWith(_SendMessagePressed value, $Res Function(_SendMessagePressed) _then) = __$SendMessagePressedCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SendMessagePressedCopyWithImpl<$Res>
    implements _$SendMessagePressedCopyWith<$Res> {
  __$SendMessagePressedCopyWithImpl(this._self, this._then);

  final _SendMessagePressed _self;
  final $Res Function(_SendMessagePressed) _then;

/// Create a copy of RoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SendMessagePressed(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadMoreMessages implements RoomEvent {
  const _LoadMoreMessages();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreMessages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoomEvent.loadMoreMessages()';
}


}




/// @nodoc
mixin _$RoomState {

 String get enteredRoomId; String get roomId; bool get roomJoined; bool get isLoading; RoomInfo get roomInfo; RoomMember get currentIdentity; List<ChatMessage> get messages; bool get hasMore; bool get isLoadingMore; ChatMessage get oldestMessage; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomStateCopyWith<RoomState> get copyWith => _$RoomStateCopyWithImpl<RoomState>(this as RoomState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomState&&(identical(other.enteredRoomId, enteredRoomId) || other.enteredRoomId == enteredRoomId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomJoined, roomJoined) || other.roomJoined == roomJoined)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.roomInfo, roomInfo) || other.roomInfo == roomInfo)&&(identical(other.currentIdentity, currentIdentity) || other.currentIdentity == currentIdentity)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.oldestMessage, oldestMessage) || other.oldestMessage == oldestMessage)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,enteredRoomId,roomId,roomJoined,isLoading,roomInfo,currentIdentity,const DeepCollectionEquality().hash(messages),hasMore,isLoadingMore,oldestMessage,apiFailureOrSuccess);

@override
String toString() {
  return 'RoomState(enteredRoomId: $enteredRoomId, roomId: $roomId, roomJoined: $roomJoined, isLoading: $isLoading, roomInfo: $roomInfo, currentIdentity: $currentIdentity, messages: $messages, hasMore: $hasMore, isLoadingMore: $isLoadingMore, oldestMessage: $oldestMessage, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $RoomStateCopyWith<$Res>  {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) _then) = _$RoomStateCopyWithImpl;
@useResult
$Res call({
 String enteredRoomId, String roomId, bool roomJoined, bool isLoading, RoomInfo roomInfo, RoomMember currentIdentity, List<ChatMessage> messages, bool hasMore, bool isLoadingMore, ChatMessage oldestMessage, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$RoomInfoCopyWith<$Res> get roomInfo;$RoomMemberCopyWith<$Res> get currentIdentity;$ChatMessageCopyWith<$Res> get oldestMessage;

}
/// @nodoc
class _$RoomStateCopyWithImpl<$Res>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._self, this._then);

  final RoomState _self;
  final $Res Function(RoomState) _then;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enteredRoomId = null,Object? roomId = null,Object? roomJoined = null,Object? isLoading = null,Object? roomInfo = null,Object? currentIdentity = null,Object? messages = null,Object? hasMore = null,Object? isLoadingMore = null,Object? oldestMessage = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
enteredRoomId: null == enteredRoomId ? _self.enteredRoomId : enteredRoomId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomJoined: null == roomJoined ? _self.roomJoined : roomJoined // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,roomInfo: null == roomInfo ? _self.roomInfo : roomInfo // ignore: cast_nullable_to_non_nullable
as RoomInfo,currentIdentity: null == currentIdentity ? _self.currentIdentity : currentIdentity // ignore: cast_nullable_to_non_nullable
as RoomMember,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,oldestMessage: null == oldestMessage ? _self.oldestMessage : oldestMessage // ignore: cast_nullable_to_non_nullable
as ChatMessage,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res> get roomInfo {
  
  return $RoomInfoCopyWith<$Res>(_self.roomInfo, (value) {
    return _then(_self.copyWith(roomInfo: value));
  });
}/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomMemberCopyWith<$Res> get currentIdentity {
  
  return $RoomMemberCopyWith<$Res>(_self.currentIdentity, (value) {
    return _then(_self.copyWith(currentIdentity: value));
  });
}/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get oldestMessage {
  
  return $ChatMessageCopyWith<$Res>(_self.oldestMessage, (value) {
    return _then(_self.copyWith(oldestMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [RoomState].
extension RoomStatePatterns on RoomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomState value)  $default,){
final _that = this;
switch (_that) {
case _RoomState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomState value)?  $default,){
final _that = this;
switch (_that) {
case _RoomState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String enteredRoomId,  String roomId,  bool roomJoined,  bool isLoading,  RoomInfo roomInfo,  RoomMember currentIdentity,  List<ChatMessage> messages,  bool hasMore,  bool isLoadingMore,  ChatMessage oldestMessage,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomState() when $default != null:
return $default(_that.enteredRoomId,_that.roomId,_that.roomJoined,_that.isLoading,_that.roomInfo,_that.currentIdentity,_that.messages,_that.hasMore,_that.isLoadingMore,_that.oldestMessage,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String enteredRoomId,  String roomId,  bool roomJoined,  bool isLoading,  RoomInfo roomInfo,  RoomMember currentIdentity,  List<ChatMessage> messages,  bool hasMore,  bool isLoadingMore,  ChatMessage oldestMessage,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _RoomState():
return $default(_that.enteredRoomId,_that.roomId,_that.roomJoined,_that.isLoading,_that.roomInfo,_that.currentIdentity,_that.messages,_that.hasMore,_that.isLoadingMore,_that.oldestMessage,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String enteredRoomId,  String roomId,  bool roomJoined,  bool isLoading,  RoomInfo roomInfo,  RoomMember currentIdentity,  List<ChatMessage> messages,  bool hasMore,  bool isLoadingMore,  ChatMessage oldestMessage,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _RoomState() when $default != null:
return $default(_that.enteredRoomId,_that.roomId,_that.roomJoined,_that.isLoading,_that.roomInfo,_that.currentIdentity,_that.messages,_that.hasMore,_that.isLoadingMore,_that.oldestMessage,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _RoomState extends RoomState {
  const _RoomState({required this.enteredRoomId, required this.roomId, required this.roomJoined, required this.isLoading, required this.roomInfo, required this.currentIdentity, required final  List<ChatMessage> messages, required this.hasMore, required this.isLoadingMore, required this.oldestMessage, required this.apiFailureOrSuccess}): _messages = messages,super._();
  

@override final  String enteredRoomId;
@override final  String roomId;
@override final  bool roomJoined;
@override final  bool isLoading;
@override final  RoomInfo roomInfo;
@override final  RoomMember currentIdentity;
 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  bool hasMore;
@override final  bool isLoadingMore;
@override final  ChatMessage oldestMessage;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomStateCopyWith<_RoomState> get copyWith => __$RoomStateCopyWithImpl<_RoomState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomState&&(identical(other.enteredRoomId, enteredRoomId) || other.enteredRoomId == enteredRoomId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomJoined, roomJoined) || other.roomJoined == roomJoined)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.roomInfo, roomInfo) || other.roomInfo == roomInfo)&&(identical(other.currentIdentity, currentIdentity) || other.currentIdentity == currentIdentity)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.oldestMessage, oldestMessage) || other.oldestMessage == oldestMessage)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,enteredRoomId,roomId,roomJoined,isLoading,roomInfo,currentIdentity,const DeepCollectionEquality().hash(_messages),hasMore,isLoadingMore,oldestMessage,apiFailureOrSuccess);

@override
String toString() {
  return 'RoomState(enteredRoomId: $enteredRoomId, roomId: $roomId, roomJoined: $roomJoined, isLoading: $isLoading, roomInfo: $roomInfo, currentIdentity: $currentIdentity, messages: $messages, hasMore: $hasMore, isLoadingMore: $isLoadingMore, oldestMessage: $oldestMessage, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$RoomStateCopyWith<$Res> implements $RoomStateCopyWith<$Res> {
  factory _$RoomStateCopyWith(_RoomState value, $Res Function(_RoomState) _then) = __$RoomStateCopyWithImpl;
@override @useResult
$Res call({
 String enteredRoomId, String roomId, bool roomJoined, bool isLoading, RoomInfo roomInfo, RoomMember currentIdentity, List<ChatMessage> messages, bool hasMore, bool isLoadingMore, ChatMessage oldestMessage, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $RoomInfoCopyWith<$Res> get roomInfo;@override $RoomMemberCopyWith<$Res> get currentIdentity;@override $ChatMessageCopyWith<$Res> get oldestMessage;

}
/// @nodoc
class __$RoomStateCopyWithImpl<$Res>
    implements _$RoomStateCopyWith<$Res> {
  __$RoomStateCopyWithImpl(this._self, this._then);

  final _RoomState _self;
  final $Res Function(_RoomState) _then;

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enteredRoomId = null,Object? roomId = null,Object? roomJoined = null,Object? isLoading = null,Object? roomInfo = null,Object? currentIdentity = null,Object? messages = null,Object? hasMore = null,Object? isLoadingMore = null,Object? oldestMessage = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_RoomState(
enteredRoomId: null == enteredRoomId ? _self.enteredRoomId : enteredRoomId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomJoined: null == roomJoined ? _self.roomJoined : roomJoined // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,roomInfo: null == roomInfo ? _self.roomInfo : roomInfo // ignore: cast_nullable_to_non_nullable
as RoomInfo,currentIdentity: null == currentIdentity ? _self.currentIdentity : currentIdentity // ignore: cast_nullable_to_non_nullable
as RoomMember,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,oldestMessage: null == oldestMessage ? _self.oldestMessage : oldestMessage // ignore: cast_nullable_to_non_nullable
as ChatMessage,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res> get roomInfo {
  
  return $RoomInfoCopyWith<$Res>(_self.roomInfo, (value) {
    return _then(_self.copyWith(roomInfo: value));
  });
}/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomMemberCopyWith<$Res> get currentIdentity {
  
  return $RoomMemberCopyWith<$Res>(_self.currentIdentity, (value) {
    return _then(_self.copyWith(currentIdentity: value));
  });
}/// Create a copy of RoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<$Res> get oldestMessage {
  
  return $ChatMessageCopyWith<$Res>(_self.oldestMessage, (value) {
    return _then(_self.copyWith(oldestMessage: value));
  });
}
}

// dart format on
