// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationMessage _$ConversationMessageFromJson(Map<String, dynamic> json) =>
    _ConversationMessage(
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      conversationId: json['conversationId'] as String,
      content: json['content'] as String,
      binaryData:
          (json['binaryData'] as List<dynamic>?)
              ?.map((e) => BinaryData.fromJson(e as Map<String, dynamic>))
              .toList(),
      responseTime: (json['responseTime'] as num?)?.toDouble(),
      agent: json['agent'] as String?,
      symbols:
          (json['symbols'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ConversationMessageToJson(
  _ConversationMessage instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$MessageTypeEnumMap[instance.type]!,
  'conversationId': instance.conversationId,
  'content': instance.content,
  'binaryData': instance.binaryData,
  'responseTime': instance.responseTime,
  'agent': instance.agent,
  'symbols': instance.symbols?.toList(),
};

const _$MessageTypeEnumMap = {MessageType.user: 'user', MessageType.bot: 'bot'};

_BinaryData _$BinaryDataFromJson(Map<String, dynamic> json) => _BinaryData(
  dataAsBase64: json['dataAsBase64'] as String?,
  mimeType: json['mimeType'] as String,
  source: json['source'] as String?,
);

Map<String, dynamic> _$BinaryDataToJson(_BinaryData instance) =>
    <String, dynamic>{
      'dataAsBase64': instance.dataAsBase64,
      'mimeType': instance.mimeType,
      'source': instance.source,
    };
