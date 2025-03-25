// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentEvent _$AgentEventFromJson(Map<String, dynamic> json) => _AgentEvent(
  type: json['type'] as String,
  payload: json['payload'] as String,
  conversationId: json['conversationId'] as String?,
);

Map<String, dynamic> _$AgentEventToJson(_AgentEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload,
      'conversationId': instance.conversationId,
    };
