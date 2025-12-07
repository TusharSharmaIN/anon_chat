import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rumour/domain/core/value/value_objects.dart';

part 'chat_message.freezed.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const ChatMessage._();

  const factory ChatMessage({
    required StringValue messageId,
    required StringValue text,
    required StringValue senderUid,
    required StringValue senderName,
    required DateTimeValue createdAt,
  }) = _ChatMessage;

  factory ChatMessage.empty() => ChatMessage(
    messageId: StringValue(''),
    text: StringValue(''),
    senderUid: StringValue(''),
    senderName: StringValue(''),
    createdAt: DateTimeValue(''),
  );

  bool isSentBy(String myUid) => senderUid.getValue() == myUid;
}
