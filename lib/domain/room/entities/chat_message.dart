class ChatMessage {
  final String id;
  final String handle;
  final String text;
  final DateTime time;
  final bool isMe;
  
  const ChatMessage({
    required this.id,
    required this.handle,
    required this.text,
    required this.time,
    required this.isMe,
  });
}