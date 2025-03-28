// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationMessageImpl _$$ConversationMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationMessageImpl(
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      conversationId: json['conversationId'] as String,
      content: json['content'] as String,
      binaryData: (json['binaryData'] as List<dynamic>?)
          ?.map((e) => BinaryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseTime: (json['responseTime'] as num?)?.toDouble(),
      agent: json['agent'] as String?,
      symbols:
          (json['symbols'] as List<dynamic>?)?.map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$$ConversationMessageImplToJson(
        _$ConversationMessageImpl instance) =>
    <String, dynamic>{
      'type': _$MessageTypeEnumMap[instance.type]!,
      'conversationId': instance.conversationId,
      'content': instance.content,
      'binaryData': instance.binaryData,
      'responseTime': instance.responseTime,
      'agent': instance.agent,
      'symbols': instance.symbols?.toList(),
    };

const _$MessageTypeEnumMap = {
  MessageType.user: 'user',
  MessageType.bot: 'bot',
};

_$BinaryDataImpl _$$BinaryDataImplFromJson(Map<String, dynamic> json) =>
    _$BinaryDataImpl(
      dataAsBase64: json['dataAsBase64'] as String?,
      mimeType: json['mimeType'] as String,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$BinaryDataImplToJson(_$BinaryDataImpl instance) =>
    <String, dynamic>{
      'dataAsBase64': instance.dataAsBase64,
      'mimeType': instance.mimeType,
      'source': instance.source,
    };
