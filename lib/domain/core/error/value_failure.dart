import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = _Empty<T>;

  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;

  const factory ValueFailure.mustOneUpperCaseCharacter({
    required T failedValue,
  }) = OneUpperCase<T>;

  const factory ValueFailure.mustOneLowerCaseCharacter({
    required T failedValue,
  }) = OneLowerCase<T>;

  const factory ValueFailure.mustOneNumericCharacter({required T failedValue}) =
      OneNumeric<T>;

  const factory ValueFailure.mustOneSpecialCharacter({required T failedValue}) =
      OneSpecial<T>;

  const factory ValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;

  const factory ValueFailure.passwordNotMatchRequirements({
    required T failedValue,
  }) = PasswordNotMatch<T>;

  const factory ValueFailure.invalidDoubleValue({required T failedValue}) =
      InvalidDoubleValue<T>;

  const factory ValueFailure.invalidIntegerValue({required T failedValue}) =
      InvalidIntegerValue<T>;

  const factory ValueFailure.subceedLength({
    required T failedValue,
    required int min,
  }) = SubceedLength<T>;

  const factory ValueFailure.mustMatchNewPassword({required T failedValue}) =
      MatchNewPassword<T>;

  const factory ValueFailure.invalidJWT({required T failedValue}) =
      InvalidJWT<T>;

  const factory ValueFailure.invalidJWTPayload({required T failedValue}) =
      InvalidJWTPayload<T>;

  const factory ValueFailure.invalidCharLimits({
    required T failedValue,
    required int min,
    required int max,
  }) = InvalidCharLimits<T>;

  const factory ValueFailure.invalidNumLimits({
    required T failedValue,
    required num min,
    required num max,
  }) = InvalidNumLimits<T>;

  const factory ValueFailure.invalidNumMin({
    required T failedValue,
    required num min,
  }) = InvalidNumMin<T>;

  const factory ValueFailure.invalidUrl({required T failedValue}) =
      InvalidUrl<T>;

  const factory ValueFailure.invalidWalletAddress({required T failedValue}) =
      InvalidWalletAddress<T>;

  const factory ValueFailure.invalidTransactionStatus({
    required T failedValue,
  }) = InvalidTransactionStatus<T>;
}
