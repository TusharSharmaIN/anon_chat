import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Object?> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object? json) {
    if (json is Timestamp) return json;
    if (json is Map<String, dynamic>) {
      // This handles Firestore Emulator format
      return Timestamp(
        json['_seconds'] ?? json['seconds'],
        json['_nanoseconds'] ?? json['nanoseconds'],
      );
    }
    throw ArgumentError('Invalid timestamp JSON: $json');
  }

  @override
  Object toJson(Timestamp object) => object;
}
