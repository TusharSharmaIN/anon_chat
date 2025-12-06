import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/infrastructure/core/utils/timestamp_converter.dart';

part 'chat_message_dto.freezed.dart';
part 'chat_message_dto.g.dart';

@freezed
abstract class ChatMessageDto with _$ChatMessageDto {
  const ChatMessageDto._();

  const factory ChatMessageDto({
    @JsonKey(name: 'messageId') required String messageId,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'senderUid') required String senderUid,
    @JsonKey(name: 'senderName') required String senderName,
    @TimestampConverter()
    @JsonKey(name: 'createdAt')
    required Timestamp createdAt,
  }) = _ChatMessageDto;

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);

  ChatMessage toDomain() => ChatMessage(
    messageId: StringValue(messageId),
    text: StringValue(text),
    senderUid: StringValue(senderUid),
    senderName: StringValue(senderName),
    createdAt: DateTimeValue(createdAt.toDate().toIso8601String()),
  );

  factory ChatMessageDto.fromDomain(ChatMessage msg) => ChatMessageDto(
    messageId: msg.messageId.getOrCrash(),
    text: msg.text.getOrCrash(),
    senderUid: msg.senderUid.getOrCrash(),
    senderName: msg.senderName.getOrCrash(),
    createdAt: Timestamp.fromDate(msg.createdAt.dateTime),
  );
}
