// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValueFailure<T> {

 T get failedValue;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => _$ValueFailureCopyWithImpl<T, ValueFailure<T>>(this as ValueFailure<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) _then) = _$ValueFailureCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure<T> _self;
  final $Res Function(ValueFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_self.copyWith(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns<T> on ValueFailure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Empty<T> value)?  empty,TResult Function( InvalidEmail<T> value)?  invalidEmail,TResult Function( OneUpperCase<T> value)?  mustOneUpperCaseCharacter,TResult Function( OneLowerCase<T> value)?  mustOneLowerCaseCharacter,TResult Function( OneNumeric<T> value)?  mustOneNumericCharacter,TResult Function( OneSpecial<T> value)?  mustOneSpecialCharacter,TResult Function( ShortPassword<T> value)?  shortPassword,TResult Function( PasswordNotMatch<T> value)?  passwordNotMatchRequirements,TResult Function( InvalidDoubleValue<T> value)?  invalidDoubleValue,TResult Function( InvalidIntegerValue<T> value)?  invalidIntegerValue,TResult Function( SubceedLength<T> value)?  subceedLength,TResult Function( MatchNewPassword<T> value)?  mustMatchNewPassword,TResult Function( InvalidJWT<T> value)?  invalidJWT,TResult Function( InvalidJWTPayload<T> value)?  invalidJWTPayload,TResult Function( InvalidCharLimits<T> value)?  invalidCharLimits,TResult Function( InvalidNumLimits<T> value)?  invalidNumLimits,TResult Function( InvalidNumMin<T> value)?  invalidNumMin,TResult Function( InvalidUrl<T> value)?  invalidUrl,TResult Function( InvalidWalletAddress<T> value)?  invalidWalletAddress,TResult Function( InvalidTransactionStatus<T> value)?  invalidTransactionStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Empty() when empty != null:
return empty(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case OneUpperCase() when mustOneUpperCaseCharacter != null:
return mustOneUpperCaseCharacter(_that);case OneLowerCase() when mustOneLowerCaseCharacter != null:
return mustOneLowerCaseCharacter(_that);case OneNumeric() when mustOneNumericCharacter != null:
return mustOneNumericCharacter(_that);case OneSpecial() when mustOneSpecialCharacter != null:
return mustOneSpecialCharacter(_that);case ShortPassword() when shortPassword != null:
return shortPassword(_that);case PasswordNotMatch() when passwordNotMatchRequirements != null:
return passwordNotMatchRequirements(_that);case InvalidDoubleValue() when invalidDoubleValue != null:
return invalidDoubleValue(_that);case InvalidIntegerValue() when invalidIntegerValue != null:
return invalidIntegerValue(_that);case SubceedLength() when subceedLength != null:
return subceedLength(_that);case MatchNewPassword() when mustMatchNewPassword != null:
return mustMatchNewPassword(_that);case InvalidJWT() when invalidJWT != null:
return invalidJWT(_that);case InvalidJWTPayload() when invalidJWTPayload != null:
return invalidJWTPayload(_that);case InvalidCharLimits() when invalidCharLimits != null:
return invalidCharLimits(_that);case InvalidNumLimits() when invalidNumLimits != null:
return invalidNumLimits(_that);case InvalidNumMin() when invalidNumMin != null:
return invalidNumMin(_that);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that);case InvalidWalletAddress() when invalidWalletAddress != null:
return invalidWalletAddress(_that);case InvalidTransactionStatus() when invalidTransactionStatus != null:
return invalidTransactionStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Empty<T> value)  empty,required TResult Function( InvalidEmail<T> value)  invalidEmail,required TResult Function( OneUpperCase<T> value)  mustOneUpperCaseCharacter,required TResult Function( OneLowerCase<T> value)  mustOneLowerCaseCharacter,required TResult Function( OneNumeric<T> value)  mustOneNumericCharacter,required TResult Function( OneSpecial<T> value)  mustOneSpecialCharacter,required TResult Function( ShortPassword<T> value)  shortPassword,required TResult Function( PasswordNotMatch<T> value)  passwordNotMatchRequirements,required TResult Function( InvalidDoubleValue<T> value)  invalidDoubleValue,required TResult Function( InvalidIntegerValue<T> value)  invalidIntegerValue,required TResult Function( SubceedLength<T> value)  subceedLength,required TResult Function( MatchNewPassword<T> value)  mustMatchNewPassword,required TResult Function( InvalidJWT<T> value)  invalidJWT,required TResult Function( InvalidJWTPayload<T> value)  invalidJWTPayload,required TResult Function( InvalidCharLimits<T> value)  invalidCharLimits,required TResult Function( InvalidNumLimits<T> value)  invalidNumLimits,required TResult Function( InvalidNumMin<T> value)  invalidNumMin,required TResult Function( InvalidUrl<T> value)  invalidUrl,required TResult Function( InvalidWalletAddress<T> value)  invalidWalletAddress,required TResult Function( InvalidTransactionStatus<T> value)  invalidTransactionStatus,}){
final _that = this;
switch (_that) {
case _Empty():
return empty(_that);case InvalidEmail():
return invalidEmail(_that);case OneUpperCase():
return mustOneUpperCaseCharacter(_that);case OneLowerCase():
return mustOneLowerCaseCharacter(_that);case OneNumeric():
return mustOneNumericCharacter(_that);case OneSpecial():
return mustOneSpecialCharacter(_that);case ShortPassword():
return shortPassword(_that);case PasswordNotMatch():
return passwordNotMatchRequirements(_that);case InvalidDoubleValue():
return invalidDoubleValue(_that);case InvalidIntegerValue():
return invalidIntegerValue(_that);case SubceedLength():
return subceedLength(_that);case MatchNewPassword():
return mustMatchNewPassword(_that);case InvalidJWT():
return invalidJWT(_that);case InvalidJWTPayload():
return invalidJWTPayload(_that);case InvalidCharLimits():
return invalidCharLimits(_that);case InvalidNumLimits():
return invalidNumLimits(_that);case InvalidNumMin():
return invalidNumMin(_that);case InvalidUrl():
return invalidUrl(_that);case InvalidWalletAddress():
return invalidWalletAddress(_that);case InvalidTransactionStatus():
return invalidTransactionStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Empty<T> value)?  empty,TResult? Function( InvalidEmail<T> value)?  invalidEmail,TResult? Function( OneUpperCase<T> value)?  mustOneUpperCaseCharacter,TResult? Function( OneLowerCase<T> value)?  mustOneLowerCaseCharacter,TResult? Function( OneNumeric<T> value)?  mustOneNumericCharacter,TResult? Function( OneSpecial<T> value)?  mustOneSpecialCharacter,TResult? Function( ShortPassword<T> value)?  shortPassword,TResult? Function( PasswordNotMatch<T> value)?  passwordNotMatchRequirements,TResult? Function( InvalidDoubleValue<T> value)?  invalidDoubleValue,TResult? Function( InvalidIntegerValue<T> value)?  invalidIntegerValue,TResult? Function( SubceedLength<T> value)?  subceedLength,TResult? Function( MatchNewPassword<T> value)?  mustMatchNewPassword,TResult? Function( InvalidJWT<T> value)?  invalidJWT,TResult? Function( InvalidJWTPayload<T> value)?  invalidJWTPayload,TResult? Function( InvalidCharLimits<T> value)?  invalidCharLimits,TResult? Function( InvalidNumLimits<T> value)?  invalidNumLimits,TResult? Function( InvalidNumMin<T> value)?  invalidNumMin,TResult? Function( InvalidUrl<T> value)?  invalidUrl,TResult? Function( InvalidWalletAddress<T> value)?  invalidWalletAddress,TResult? Function( InvalidTransactionStatus<T> value)?  invalidTransactionStatus,}){
final _that = this;
switch (_that) {
case _Empty() when empty != null:
return empty(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case OneUpperCase() when mustOneUpperCaseCharacter != null:
return mustOneUpperCaseCharacter(_that);case OneLowerCase() when mustOneLowerCaseCharacter != null:
return mustOneLowerCaseCharacter(_that);case OneNumeric() when mustOneNumericCharacter != null:
return mustOneNumericCharacter(_that);case OneSpecial() when mustOneSpecialCharacter != null:
return mustOneSpecialCharacter(_that);case ShortPassword() when shortPassword != null:
return shortPassword(_that);case PasswordNotMatch() when passwordNotMatchRequirements != null:
return passwordNotMatchRequirements(_that);case InvalidDoubleValue() when invalidDoubleValue != null:
return invalidDoubleValue(_that);case InvalidIntegerValue() when invalidIntegerValue != null:
return invalidIntegerValue(_that);case SubceedLength() when subceedLength != null:
return subceedLength(_that);case MatchNewPassword() when mustMatchNewPassword != null:
return mustMatchNewPassword(_that);case InvalidJWT() when invalidJWT != null:
return invalidJWT(_that);case InvalidJWTPayload() when invalidJWTPayload != null:
return invalidJWTPayload(_that);case InvalidCharLimits() when invalidCharLimits != null:
return invalidCharLimits(_that);case InvalidNumLimits() when invalidNumLimits != null:
return invalidNumLimits(_that);case InvalidNumMin() when invalidNumMin != null:
return invalidNumMin(_that);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that);case InvalidWalletAddress() when invalidWalletAddress != null:
return invalidWalletAddress(_that);case InvalidTransactionStatus() when invalidTransactionStatus != null:
return invalidTransactionStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T failedValue)?  empty,TResult Function( T failedValue)?  invalidEmail,TResult Function( T failedValue)?  mustOneUpperCaseCharacter,TResult Function( T failedValue)?  mustOneLowerCaseCharacter,TResult Function( T failedValue)?  mustOneNumericCharacter,TResult Function( T failedValue)?  mustOneSpecialCharacter,TResult Function( T failedValue)?  shortPassword,TResult Function( T failedValue)?  passwordNotMatchRequirements,TResult Function( T failedValue)?  invalidDoubleValue,TResult Function( T failedValue)?  invalidIntegerValue,TResult Function( T failedValue,  int min)?  subceedLength,TResult Function( T failedValue)?  mustMatchNewPassword,TResult Function( T failedValue)?  invalidJWT,TResult Function( T failedValue)?  invalidJWTPayload,TResult Function( T failedValue,  int min,  int max)?  invalidCharLimits,TResult Function( T failedValue,  num min,  num max)?  invalidNumLimits,TResult Function( T failedValue,  num min)?  invalidNumMin,TResult Function( T failedValue)?  invalidUrl,TResult Function( T failedValue)?  invalidWalletAddress,TResult Function( T failedValue)?  invalidTransactionStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Empty() when empty != null:
return empty(_that.failedValue);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case OneUpperCase() when mustOneUpperCaseCharacter != null:
return mustOneUpperCaseCharacter(_that.failedValue);case OneLowerCase() when mustOneLowerCaseCharacter != null:
return mustOneLowerCaseCharacter(_that.failedValue);case OneNumeric() when mustOneNumericCharacter != null:
return mustOneNumericCharacter(_that.failedValue);case OneSpecial() when mustOneSpecialCharacter != null:
return mustOneSpecialCharacter(_that.failedValue);case ShortPassword() when shortPassword != null:
return shortPassword(_that.failedValue);case PasswordNotMatch() when passwordNotMatchRequirements != null:
return passwordNotMatchRequirements(_that.failedValue);case InvalidDoubleValue() when invalidDoubleValue != null:
return invalidDoubleValue(_that.failedValue);case InvalidIntegerValue() when invalidIntegerValue != null:
return invalidIntegerValue(_that.failedValue);case SubceedLength() when subceedLength != null:
return subceedLength(_that.failedValue,_that.min);case MatchNewPassword() when mustMatchNewPassword != null:
return mustMatchNewPassword(_that.failedValue);case InvalidJWT() when invalidJWT != null:
return invalidJWT(_that.failedValue);case InvalidJWTPayload() when invalidJWTPayload != null:
return invalidJWTPayload(_that.failedValue);case InvalidCharLimits() when invalidCharLimits != null:
return invalidCharLimits(_that.failedValue,_that.min,_that.max);case InvalidNumLimits() when invalidNumLimits != null:
return invalidNumLimits(_that.failedValue,_that.min,_that.max);case InvalidNumMin() when invalidNumMin != null:
return invalidNumMin(_that.failedValue,_that.min);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that.failedValue);case InvalidWalletAddress() when invalidWalletAddress != null:
return invalidWalletAddress(_that.failedValue);case InvalidTransactionStatus() when invalidTransactionStatus != null:
return invalidTransactionStatus(_that.failedValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T failedValue)  empty,required TResult Function( T failedValue)  invalidEmail,required TResult Function( T failedValue)  mustOneUpperCaseCharacter,required TResult Function( T failedValue)  mustOneLowerCaseCharacter,required TResult Function( T failedValue)  mustOneNumericCharacter,required TResult Function( T failedValue)  mustOneSpecialCharacter,required TResult Function( T failedValue)  shortPassword,required TResult Function( T failedValue)  passwordNotMatchRequirements,required TResult Function( T failedValue)  invalidDoubleValue,required TResult Function( T failedValue)  invalidIntegerValue,required TResult Function( T failedValue,  int min)  subceedLength,required TResult Function( T failedValue)  mustMatchNewPassword,required TResult Function( T failedValue)  invalidJWT,required TResult Function( T failedValue)  invalidJWTPayload,required TResult Function( T failedValue,  int min,  int max)  invalidCharLimits,required TResult Function( T failedValue,  num min,  num max)  invalidNumLimits,required TResult Function( T failedValue,  num min)  invalidNumMin,required TResult Function( T failedValue)  invalidUrl,required TResult Function( T failedValue)  invalidWalletAddress,required TResult Function( T failedValue)  invalidTransactionStatus,}) {final _that = this;
switch (_that) {
case _Empty():
return empty(_that.failedValue);case InvalidEmail():
return invalidEmail(_that.failedValue);case OneUpperCase():
return mustOneUpperCaseCharacter(_that.failedValue);case OneLowerCase():
return mustOneLowerCaseCharacter(_that.failedValue);case OneNumeric():
return mustOneNumericCharacter(_that.failedValue);case OneSpecial():
return mustOneSpecialCharacter(_that.failedValue);case ShortPassword():
return shortPassword(_that.failedValue);case PasswordNotMatch():
return passwordNotMatchRequirements(_that.failedValue);case InvalidDoubleValue():
return invalidDoubleValue(_that.failedValue);case InvalidIntegerValue():
return invalidIntegerValue(_that.failedValue);case SubceedLength():
return subceedLength(_that.failedValue,_that.min);case MatchNewPassword():
return mustMatchNewPassword(_that.failedValue);case InvalidJWT():
return invalidJWT(_that.failedValue);case InvalidJWTPayload():
return invalidJWTPayload(_that.failedValue);case InvalidCharLimits():
return invalidCharLimits(_that.failedValue,_that.min,_that.max);case InvalidNumLimits():
return invalidNumLimits(_that.failedValue,_that.min,_that.max);case InvalidNumMin():
return invalidNumMin(_that.failedValue,_that.min);case InvalidUrl():
return invalidUrl(_that.failedValue);case InvalidWalletAddress():
return invalidWalletAddress(_that.failedValue);case InvalidTransactionStatus():
return invalidTransactionStatus(_that.failedValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T failedValue)?  empty,TResult? Function( T failedValue)?  invalidEmail,TResult? Function( T failedValue)?  mustOneUpperCaseCharacter,TResult? Function( T failedValue)?  mustOneLowerCaseCharacter,TResult? Function( T failedValue)?  mustOneNumericCharacter,TResult? Function( T failedValue)?  mustOneSpecialCharacter,TResult? Function( T failedValue)?  shortPassword,TResult? Function( T failedValue)?  passwordNotMatchRequirements,TResult? Function( T failedValue)?  invalidDoubleValue,TResult? Function( T failedValue)?  invalidIntegerValue,TResult? Function( T failedValue,  int min)?  subceedLength,TResult? Function( T failedValue)?  mustMatchNewPassword,TResult? Function( T failedValue)?  invalidJWT,TResult? Function( T failedValue)?  invalidJWTPayload,TResult? Function( T failedValue,  int min,  int max)?  invalidCharLimits,TResult? Function( T failedValue,  num min,  num max)?  invalidNumLimits,TResult? Function( T failedValue,  num min)?  invalidNumMin,TResult? Function( T failedValue)?  invalidUrl,TResult? Function( T failedValue)?  invalidWalletAddress,TResult? Function( T failedValue)?  invalidTransactionStatus,}) {final _that = this;
switch (_that) {
case _Empty() when empty != null:
return empty(_that.failedValue);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case OneUpperCase() when mustOneUpperCaseCharacter != null:
return mustOneUpperCaseCharacter(_that.failedValue);case OneLowerCase() when mustOneLowerCaseCharacter != null:
return mustOneLowerCaseCharacter(_that.failedValue);case OneNumeric() when mustOneNumericCharacter != null:
return mustOneNumericCharacter(_that.failedValue);case OneSpecial() when mustOneSpecialCharacter != null:
return mustOneSpecialCharacter(_that.failedValue);case ShortPassword() when shortPassword != null:
return shortPassword(_that.failedValue);case PasswordNotMatch() when passwordNotMatchRequirements != null:
return passwordNotMatchRequirements(_that.failedValue);case InvalidDoubleValue() when invalidDoubleValue != null:
return invalidDoubleValue(_that.failedValue);case InvalidIntegerValue() when invalidIntegerValue != null:
return invalidIntegerValue(_that.failedValue);case SubceedLength() when subceedLength != null:
return subceedLength(_that.failedValue,_that.min);case MatchNewPassword() when mustMatchNewPassword != null:
return mustMatchNewPassword(_that.failedValue);case InvalidJWT() when invalidJWT != null:
return invalidJWT(_that.failedValue);case InvalidJWTPayload() when invalidJWTPayload != null:
return invalidJWTPayload(_that.failedValue);case InvalidCharLimits() when invalidCharLimits != null:
return invalidCharLimits(_that.failedValue,_that.min,_that.max);case InvalidNumLimits() when invalidNumLimits != null:
return invalidNumLimits(_that.failedValue,_that.min,_that.max);case InvalidNumMin() when invalidNumMin != null:
return invalidNumMin(_that.failedValue,_that.min);case InvalidUrl() when invalidUrl != null:
return invalidUrl(_that.failedValue);case InvalidWalletAddress() when invalidWalletAddress != null:
return invalidWalletAddress(_that.failedValue);case InvalidTransactionStatus() when invalidTransactionStatus != null:
return invalidTransactionStatus(_that.failedValue);case _:
  return null;

}
}

}

/// @nodoc


class _Empty<T> implements ValueFailure<T> {
  const _Empty({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmptyCopyWith<T, _Empty<T>> get copyWith => __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class _$EmptyCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) _then) = __$EmptyCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class __$EmptyCopyWithImpl<T,$Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty<T> _self;
  final $Res Function(_Empty<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(_Empty<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidEmail<T> implements ValueFailure<T> {
  const InvalidEmail({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith => _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmail<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidEmailCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(InvalidEmail<T> value, $Res Function(InvalidEmail<T>) _then) = _$InvalidEmailCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidEmailCopyWithImpl<T,$Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(this._self, this._then);

  final InvalidEmail<T> _self;
  final $Res Function(InvalidEmail<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidEmail<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OneUpperCase<T> implements ValueFailure<T> {
  const OneUpperCase({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OneUpperCaseCopyWith<T, OneUpperCase<T>> get copyWith => _$OneUpperCaseCopyWithImpl<T, OneUpperCase<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OneUpperCase<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.mustOneUpperCaseCharacter(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $OneUpperCaseCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $OneUpperCaseCopyWith(OneUpperCase<T> value, $Res Function(OneUpperCase<T>) _then) = _$OneUpperCaseCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$OneUpperCaseCopyWithImpl<T,$Res>
    implements $OneUpperCaseCopyWith<T, $Res> {
  _$OneUpperCaseCopyWithImpl(this._self, this._then);

  final OneUpperCase<T> _self;
  final $Res Function(OneUpperCase<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(OneUpperCase<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OneLowerCase<T> implements ValueFailure<T> {
  const OneLowerCase({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OneLowerCaseCopyWith<T, OneLowerCase<T>> get copyWith => _$OneLowerCaseCopyWithImpl<T, OneLowerCase<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OneLowerCase<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.mustOneLowerCaseCharacter(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $OneLowerCaseCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $OneLowerCaseCopyWith(OneLowerCase<T> value, $Res Function(OneLowerCase<T>) _then) = _$OneLowerCaseCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$OneLowerCaseCopyWithImpl<T,$Res>
    implements $OneLowerCaseCopyWith<T, $Res> {
  _$OneLowerCaseCopyWithImpl(this._self, this._then);

  final OneLowerCase<T> _self;
  final $Res Function(OneLowerCase<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(OneLowerCase<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OneNumeric<T> implements ValueFailure<T> {
  const OneNumeric({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OneNumericCopyWith<T, OneNumeric<T>> get copyWith => _$OneNumericCopyWithImpl<T, OneNumeric<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OneNumeric<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.mustOneNumericCharacter(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $OneNumericCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $OneNumericCopyWith(OneNumeric<T> value, $Res Function(OneNumeric<T>) _then) = _$OneNumericCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$OneNumericCopyWithImpl<T,$Res>
    implements $OneNumericCopyWith<T, $Res> {
  _$OneNumericCopyWithImpl(this._self, this._then);

  final OneNumeric<T> _self;
  final $Res Function(OneNumeric<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(OneNumeric<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OneSpecial<T> implements ValueFailure<T> {
  const OneSpecial({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OneSpecialCopyWith<T, OneSpecial<T>> get copyWith => _$OneSpecialCopyWithImpl<T, OneSpecial<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OneSpecial<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.mustOneSpecialCharacter(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $OneSpecialCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $OneSpecialCopyWith(OneSpecial<T> value, $Res Function(OneSpecial<T>) _then) = _$OneSpecialCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$OneSpecialCopyWithImpl<T,$Res>
    implements $OneSpecialCopyWith<T, $Res> {
  _$OneSpecialCopyWithImpl(this._self, this._then);

  final OneSpecial<T> _self;
  final $Res Function(OneSpecial<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(OneSpecial<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ShortPassword<T> implements ValueFailure<T> {
  const ShortPassword({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith => _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortPassword<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ShortPasswordCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(ShortPassword<T> value, $Res Function(ShortPassword<T>) _then) = _$ShortPasswordCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ShortPasswordCopyWithImpl<T,$Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(this._self, this._then);

  final ShortPassword<T> _self;
  final $Res Function(ShortPassword<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(ShortPassword<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class PasswordNotMatch<T> implements ValueFailure<T> {
  const PasswordNotMatch({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordNotMatchCopyWith<T, PasswordNotMatch<T>> get copyWith => _$PasswordNotMatchCopyWithImpl<T, PasswordNotMatch<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordNotMatch<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.passwordNotMatchRequirements(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $PasswordNotMatchCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $PasswordNotMatchCopyWith(PasswordNotMatch<T> value, $Res Function(PasswordNotMatch<T>) _then) = _$PasswordNotMatchCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$PasswordNotMatchCopyWithImpl<T,$Res>
    implements $PasswordNotMatchCopyWith<T, $Res> {
  _$PasswordNotMatchCopyWithImpl(this._self, this._then);

  final PasswordNotMatch<T> _self;
  final $Res Function(PasswordNotMatch<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(PasswordNotMatch<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidDoubleValue<T> implements ValueFailure<T> {
  const InvalidDoubleValue({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidDoubleValueCopyWith<T, InvalidDoubleValue<T>> get copyWith => _$InvalidDoubleValueCopyWithImpl<T, InvalidDoubleValue<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidDoubleValue<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidDoubleValue(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidDoubleValueCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidDoubleValueCopyWith(InvalidDoubleValue<T> value, $Res Function(InvalidDoubleValue<T>) _then) = _$InvalidDoubleValueCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidDoubleValueCopyWithImpl<T,$Res>
    implements $InvalidDoubleValueCopyWith<T, $Res> {
  _$InvalidDoubleValueCopyWithImpl(this._self, this._then);

  final InvalidDoubleValue<T> _self;
  final $Res Function(InvalidDoubleValue<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidDoubleValue<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidIntegerValue<T> implements ValueFailure<T> {
  const InvalidIntegerValue({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidIntegerValueCopyWith<T, InvalidIntegerValue<T>> get copyWith => _$InvalidIntegerValueCopyWithImpl<T, InvalidIntegerValue<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidIntegerValue<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidIntegerValue(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidIntegerValueCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidIntegerValueCopyWith(InvalidIntegerValue<T> value, $Res Function(InvalidIntegerValue<T>) _then) = _$InvalidIntegerValueCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidIntegerValueCopyWithImpl<T,$Res>
    implements $InvalidIntegerValueCopyWith<T, $Res> {
  _$InvalidIntegerValueCopyWithImpl(this._self, this._then);

  final InvalidIntegerValue<T> _self;
  final $Res Function(InvalidIntegerValue<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidIntegerValue<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SubceedLength<T> implements ValueFailure<T> {
  const SubceedLength({required this.failedValue, required this.min});
  

@override final  T failedValue;
 final  int min;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubceedLengthCopyWith<T, SubceedLength<T>> get copyWith => _$SubceedLengthCopyWithImpl<T, SubceedLength<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubceedLength<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.min, min) || other.min == min));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),min);

@override
String toString() {
  return 'ValueFailure<$T>.subceedLength(failedValue: $failedValue, min: $min)';
}


}

/// @nodoc
abstract mixin class $SubceedLengthCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $SubceedLengthCopyWith(SubceedLength<T> value, $Res Function(SubceedLength<T>) _then) = _$SubceedLengthCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int min
});




}
/// @nodoc
class _$SubceedLengthCopyWithImpl<T,$Res>
    implements $SubceedLengthCopyWith<T, $Res> {
  _$SubceedLengthCopyWithImpl(this._self, this._then);

  final SubceedLength<T> _self;
  final $Res Function(SubceedLength<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? min = null,}) {
  return _then(SubceedLength<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class MatchNewPassword<T> implements ValueFailure<T> {
  const MatchNewPassword({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchNewPasswordCopyWith<T, MatchNewPassword<T>> get copyWith => _$MatchNewPasswordCopyWithImpl<T, MatchNewPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchNewPassword<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.mustMatchNewPassword(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $MatchNewPasswordCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $MatchNewPasswordCopyWith(MatchNewPassword<T> value, $Res Function(MatchNewPassword<T>) _then) = _$MatchNewPasswordCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$MatchNewPasswordCopyWithImpl<T,$Res>
    implements $MatchNewPasswordCopyWith<T, $Res> {
  _$MatchNewPasswordCopyWithImpl(this._self, this._then);

  final MatchNewPassword<T> _self;
  final $Res Function(MatchNewPassword<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(MatchNewPassword<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidJWT<T> implements ValueFailure<T> {
  const InvalidJWT({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidJWTCopyWith<T, InvalidJWT<T>> get copyWith => _$InvalidJWTCopyWithImpl<T, InvalidJWT<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidJWT<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidJWT(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidJWTCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidJWTCopyWith(InvalidJWT<T> value, $Res Function(InvalidJWT<T>) _then) = _$InvalidJWTCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidJWTCopyWithImpl<T,$Res>
    implements $InvalidJWTCopyWith<T, $Res> {
  _$InvalidJWTCopyWithImpl(this._self, this._then);

  final InvalidJWT<T> _self;
  final $Res Function(InvalidJWT<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidJWT<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidJWTPayload<T> implements ValueFailure<T> {
  const InvalidJWTPayload({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidJWTPayloadCopyWith<T, InvalidJWTPayload<T>> get copyWith => _$InvalidJWTPayloadCopyWithImpl<T, InvalidJWTPayload<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidJWTPayload<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidJWTPayload(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidJWTPayloadCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidJWTPayloadCopyWith(InvalidJWTPayload<T> value, $Res Function(InvalidJWTPayload<T>) _then) = _$InvalidJWTPayloadCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidJWTPayloadCopyWithImpl<T,$Res>
    implements $InvalidJWTPayloadCopyWith<T, $Res> {
  _$InvalidJWTPayloadCopyWithImpl(this._self, this._then);

  final InvalidJWTPayload<T> _self;
  final $Res Function(InvalidJWTPayload<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidJWTPayload<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidCharLimits<T> implements ValueFailure<T> {
  const InvalidCharLimits({required this.failedValue, required this.min, required this.max});
  

@override final  T failedValue;
 final  int min;
 final  int max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidCharLimitsCopyWith<T, InvalidCharLimits<T>> get copyWith => _$InvalidCharLimitsCopyWithImpl<T, InvalidCharLimits<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidCharLimits<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),min,max);

@override
String toString() {
  return 'ValueFailure<$T>.invalidCharLimits(failedValue: $failedValue, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $InvalidCharLimitsCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidCharLimitsCopyWith(InvalidCharLimits<T> value, $Res Function(InvalidCharLimits<T>) _then) = _$InvalidCharLimitsCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int min, int max
});




}
/// @nodoc
class _$InvalidCharLimitsCopyWithImpl<T,$Res>
    implements $InvalidCharLimitsCopyWith<T, $Res> {
  _$InvalidCharLimitsCopyWithImpl(this._self, this._then);

  final InvalidCharLimits<T> _self;
  final $Res Function(InvalidCharLimits<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? min = null,Object? max = null,}) {
  return _then(InvalidCharLimits<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InvalidNumLimits<T> implements ValueFailure<T> {
  const InvalidNumLimits({required this.failedValue, required this.min, required this.max});
  

@override final  T failedValue;
 final  num min;
 final  num max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidNumLimitsCopyWith<T, InvalidNumLimits<T>> get copyWith => _$InvalidNumLimitsCopyWithImpl<T, InvalidNumLimits<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidNumLimits<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),min,max);

@override
String toString() {
  return 'ValueFailure<$T>.invalidNumLimits(failedValue: $failedValue, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $InvalidNumLimitsCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidNumLimitsCopyWith(InvalidNumLimits<T> value, $Res Function(InvalidNumLimits<T>) _then) = _$InvalidNumLimitsCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, num min, num max
});




}
/// @nodoc
class _$InvalidNumLimitsCopyWithImpl<T,$Res>
    implements $InvalidNumLimitsCopyWith<T, $Res> {
  _$InvalidNumLimitsCopyWithImpl(this._self, this._then);

  final InvalidNumLimits<T> _self;
  final $Res Function(InvalidNumLimits<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? min = null,Object? max = null,}) {
  return _then(InvalidNumLimits<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

/// @nodoc


class InvalidNumMin<T> implements ValueFailure<T> {
  const InvalidNumMin({required this.failedValue, required this.min});
  

@override final  T failedValue;
 final  num min;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidNumMinCopyWith<T, InvalidNumMin<T>> get copyWith => _$InvalidNumMinCopyWithImpl<T, InvalidNumMin<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidNumMin<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.min, min) || other.min == min));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),min);

@override
String toString() {
  return 'ValueFailure<$T>.invalidNumMin(failedValue: $failedValue, min: $min)';
}


}

/// @nodoc
abstract mixin class $InvalidNumMinCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidNumMinCopyWith(InvalidNumMin<T> value, $Res Function(InvalidNumMin<T>) _then) = _$InvalidNumMinCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, num min
});




}
/// @nodoc
class _$InvalidNumMinCopyWithImpl<T,$Res>
    implements $InvalidNumMinCopyWith<T, $Res> {
  _$InvalidNumMinCopyWithImpl(this._self, this._then);

  final InvalidNumMin<T> _self;
  final $Res Function(InvalidNumMin<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? min = null,}) {
  return _then(InvalidNumMin<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

/// @nodoc


class InvalidUrl<T> implements ValueFailure<T> {
  const InvalidUrl({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidUrlCopyWith<T, InvalidUrl<T>> get copyWith => _$InvalidUrlCopyWithImpl<T, InvalidUrl<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidUrl<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidUrl(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidUrlCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUrlCopyWith(InvalidUrl<T> value, $Res Function(InvalidUrl<T>) _then) = _$InvalidUrlCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidUrlCopyWithImpl<T,$Res>
    implements $InvalidUrlCopyWith<T, $Res> {
  _$InvalidUrlCopyWithImpl(this._self, this._then);

  final InvalidUrl<T> _self;
  final $Res Function(InvalidUrl<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidUrl<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidWalletAddress<T> implements ValueFailure<T> {
  const InvalidWalletAddress({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidWalletAddressCopyWith<T, InvalidWalletAddress<T>> get copyWith => _$InvalidWalletAddressCopyWithImpl<T, InvalidWalletAddress<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidWalletAddress<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidWalletAddress(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidWalletAddressCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidWalletAddressCopyWith(InvalidWalletAddress<T> value, $Res Function(InvalidWalletAddress<T>) _then) = _$InvalidWalletAddressCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidWalletAddressCopyWithImpl<T,$Res>
    implements $InvalidWalletAddressCopyWith<T, $Res> {
  _$InvalidWalletAddressCopyWithImpl(this._self, this._then);

  final InvalidWalletAddress<T> _self;
  final $Res Function(InvalidWalletAddress<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidWalletAddress<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidTransactionStatus<T> implements ValueFailure<T> {
  const InvalidTransactionStatus({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidTransactionStatusCopyWith<T, InvalidTransactionStatus<T>> get copyWith => _$InvalidTransactionStatusCopyWithImpl<T, InvalidTransactionStatus<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidTransactionStatus<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidTransactionStatus(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidTransactionStatusCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidTransactionStatusCopyWith(InvalidTransactionStatus<T> value, $Res Function(InvalidTransactionStatus<T>) _then) = _$InvalidTransactionStatusCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidTransactionStatusCopyWithImpl<T,$Res>
    implements $InvalidTransactionStatusCopyWith<T, $Res> {
  _$InvalidTransactionStatusCopyWithImpl(this._self, this._then);

  final InvalidTransactionStatus<T> _self;
  final $Res Function(InvalidTransactionStatus<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidTransactionStatus<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
