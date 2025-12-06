import 'package:dartz/dartz.dart';
import 'package:rumour/domain/core/error/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringLength(
  String input, {
  required int minLength,
}) {
  if (input.length < minLength) {
    return left(ValueFailure.subceedLength(failedValue: input, min: minLength));
  }
  return right(input);
}

bool checkIfTrimmedValueNotEmpty(String text) => text.trim().isNotEmpty;

bool isMinCharacter({required String input, required int minLength}) =>
    hasLengthEqualOrGreaterThanN(input, minLength);

bool hasLengthN(String text, int n) {
  final pattern = RegExp('^.{$n}\$'); // matches any string of length n

  return pattern.hasMatch(text);
}

bool hasLengthGreaterThanN(String text, int n) {
  final regex = RegExp('^.{$n,}\$'); // matches any string of length n or more

  return regex.hasMatch(text.replaceAll('\n', ' '));
}

bool hasLengthEqualOrGreaterThanN(String text, int n) =>
    hasLengthN(text, n) || hasLengthGreaterThanN(text, n);

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  return isMinCharacter(input: input, minLength: minLength)
      ? right(input)
      : left(ValueFailure.subceedLength(failedValue: input, min: minLength));
}

Either<ValueFailure<String>, String> validateNewAndConfirmPassword(
  String confirmPassword,
  String newPassword,
) {
  return confirmPassword == newPassword
      ? right(confirmPassword)
      : left(ValueFailure.mustMatchNewPassword(failedValue: confirmPassword));
}

bool isValueEmpty(String value) {
  return value.isEmpty;
}

Either<ValueFailure<String>, String> validateStringIsEmpty(String input) {
  return input.isEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

/// Validate a numeric timestamp string (milliseconds since epoch) and
/// convert it to an ISO8601 string. Returns [Right(isoString)] when valid,
/// or a [ValueFailure<String>] on error.
Either<ValueFailure<String>, String> validateTimestampString(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  final raw = input.split('.').first;
  final parsed = int.tryParse(raw);
  if (parsed == null) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }

  try {
    final iso = DateTime.fromMillisecondsSinceEpoch(parsed).toIso8601String();
    return right(iso);
  } catch (_) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUnixTimestampString(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  final parsed = int.tryParse(input);
  if (parsed == null) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }

  try {
    final iso = DateTime.fromMillisecondsSinceEpoch(
      parsed * 1000,
    ).toIso8601String();
    return right(iso);
  } catch (_) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }
}