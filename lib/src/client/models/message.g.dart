// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentResult _$AgentResultFromJson(Map<String, dynamic> json) => _AgentResult(
  messages:
      (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
  responseTime: (json['responseTime'] as num).toDouble(),
);

Map<String, dynamic> _$AgentResultToJson(_AgentResult instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'responseTime': instance.responseTime,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  role: json['role'] as String,
  content: json['content'] as String,
  symbols: (json['symbols'] as List<dynamic>?)?.map((e) => e as String).toSet(),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
  'symbols': instance.symbols?.toList(),
};
