// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessageDto(
      messageId: json['messageId'] as String,
      text: json['text'] as String,
      senderUid: json['senderUid'] as String,
      senderName: json['senderName'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ChatMessageDtoToJson(_ChatMessageDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'text': instance.text,
      'senderUid': instance.senderUid,
      'senderName': instance.senderName,
      'createdAt': instance.createdAt,
    };
