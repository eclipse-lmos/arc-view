// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationExport _$ConversationExportFromJson(Map<String, dynamic> json) =>
    _ConversationExport(
      conversation: Conversation.fromJson(
        json['conversation'] as Map<String, dynamic>,
      ),
      events:
          (json['events'] as List<dynamic>)
              .map((e) => AgentEvent.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ConversationExportToJson(_ConversationExport instance) =>
    <String, dynamic>{
      'conversation': instance.conversation,
      'events': instance.events,
    };
