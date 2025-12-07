import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Object?> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object? json) {
    if (json == null) {
      return Timestamp.now();
    }
    if (json is Timestamp) {
      return json;
    }
    if (json is String) {
      return Timestamp.fromDate(DateTime.parse(json));
    }
    if (json is int) {
      return Timestamp.fromMillisecondsSinceEpoch(json);
    }
    throw ArgumentError('Invalid timestamp JSON: $json');
  }

  @override
  Object toJson(Timestamp timestamp) => timestamp;
}
