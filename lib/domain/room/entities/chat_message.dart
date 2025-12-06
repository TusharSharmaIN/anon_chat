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

  static List<ChatMessage> get dummyMessages => [
    ChatMessage.empty().copyWith(
      messageId: StringValue('1001'),
      senderName: StringValue('@PinkPanthress'),
      text: StringValue(
        'Hi all! I came to visit your city for the weekend. Suggest coffee shop for breakfast with family.',
      ),
      createdAt: DateTimeValue('2023-11-03T15:28:05.250Z'),
    ),
    ChatMessage.empty().copyWith(
      messageId: StringValue('1002'),
      senderName: StringValue('You'),
      text: StringValue('Hello! Visit a coffee shop on Amaranth st.'),
      createdAt: DateTimeValue('2023-11-02T15:28:05.250Z'),
    ),
  ];

  bool get isMe => senderName.getValue().toLowerCase() == 'you';
}
