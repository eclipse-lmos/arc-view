// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      messages:
          (json['messages'] as List<dynamic>)
              .map(
                (e) => ConversationMessage.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      userContext: UserContext.fromJson(
        json['userContext'] as Map<String, dynamic>,
      ),
      systemContext: SystemContext.fromJson(
        json['systemContext'] as Map<String, dynamic>,
      ),
      conversationId: json['conversationId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String?,
      loading: json['loading'] as bool?,
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'userContext': instance.userContext,
      'systemContext': instance.systemContext,
      'conversationId': instance.conversationId,
      'createdAt': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'loading': instance.loading,
    };
