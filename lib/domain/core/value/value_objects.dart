import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rumour/domain/core/error/value_error.dart';
import 'package:rumour/domain/core/error/value_failure.dart';
import 'package:rumour/domain/core/value/value_transformer.dart';
import 'package:rumour/domain/core/value/value_validator.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  int get hashcode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) =>
      StringValue._(validateStringNotEmpty(input));

  String get displayDashIfEmpty => dashIfEmpty((value.getOrElse(() => '')));

  String get displayNAIfEmpty => naIfEmpty(value.getOrElse(() => ''));

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;

  bool get isTrimmedValueNotEmpty =>
      checkIfTrimmedValueNotEmpty(value.getOrElse(() => ''));

  const StringValue._(this.value);
}

/// A ValueObject wrapper around an ISO date‑time string.
class DateTimeValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  /// Pass in an ISO‑8601 string, e.g. “2025-01-01T00:00:00Z”.
  factory DateTimeValue(String input) {
    return DateTimeValue._(validateStringNotEmpty(input));
  }

  /// Create a DateTimeValue from a numeric timestamp string (milliseconds
  /// since epoch). The input is validated and converted to an ISO8601 string
  /// using: `DateTime.fromMillisecondsSinceEpoch(timestamp.toInt()).toIso8601String()`.
  factory DateTimeValue.fromTimestamp(String input) {
    return DateTimeValue._(validateTimestampString(input));
  }

  factory DateTimeValue.fromUnixTimestamp(String input) {
    return DateTimeValue._(validateUnixTimestampString(input));
  }

  const DateTimeValue._(this.value);

  /// Raw parsed DateTime (in local time).
  DateTime get dateTime => DateTime.parse(
    value.getOrElse(() => DateTime.now().toIso8601String()),
  ).toLocal();

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;

  /// Returns e.g. “2 years ago”, “7 months ago”, “5 minutes ago”, or “just now”.
  String get timeAgo => formatTimeAgo(dateTime);

  /// If you still need absolute formatting elsewhere, you can wire them
  /// back in here:
  String get formattedDate => DateFormat('dd MMM yyyy').format(dateTime);

  String get formattedDateDDMMYYYY => DateFormat('dd/MM/yy').format(dateTime);

  String get formattedDateTime =>
      DateFormat('dd MMM yyyy, hh:mm a').format(dateTime);

  String get formattedMonthDateYearTime =>
      DateFormat('MMM dd, yyyy, hh:mm a').format(dateTime);

  String get formattedMonthDateYear =>
      DateFormat('MMM dd, yyyy').format(dateTime);

  String get formattedFullDateTimeUTC =>
      DateFormat('dd MMM yyyy, HH:mm UTC').format(dateTime);

  String get formattedTime => DateFormat('HH:mm a').format(dateTime);

  String get formattedDateYYYYMMDD => DateFormat('yyyy-MM-dd').format(dateTime);

  String get formattedDateYYYYMM => DateFormat('yyyy-MM').format(dateTime);

  String get formattedDateDDMMYYHHMM =>
      DateFormat('dd-MM-yy, HH:mm').format(dateTime);
}
