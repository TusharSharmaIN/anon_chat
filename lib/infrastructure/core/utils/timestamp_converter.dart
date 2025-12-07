import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

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
    throw ArgumentError('Invalid timestamp JSON: $json');
  }

  @override
  Object toJson(Timestamp timestamp) => timestamp;
}
