// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentResultImpl _$$AgentResultImplFromJson(Map<String, dynamic> json) =>
    _$AgentResultImpl(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseTime: (json['responseTime'] as num).toDouble(),
    );

Map<String, dynamic> _$$AgentResultImplToJson(_$AgentResultImpl instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'responseTime': instance.responseTime,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      role: json['role'] as String,
      content: json['content'] as String,
      symbols:
          (json['symbols'] as List<dynamic>?)?.map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'symbols': instance.symbols?.toList(),
    };
