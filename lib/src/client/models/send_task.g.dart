// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendTaskRequest _$SendTaskRequestFromJson(Map<String, dynamic> json) =>
    _SendTaskRequest(
      jsonrpc: json['jsonrpc'] as String,
      method: json['method'] as String,
      id: json['id'] as String,
      params: TaskSendParams.fromJson(json['params'] as Map<String, dynamic>),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$SendTaskRequestToJson(_SendTaskRequest instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'id': instance.id,
      'params': instance.params,
      'metadata': instance.metadata,
    };

_TaskSendParams _$TaskSendParamsFromJson(Map<String, dynamic> json) =>
    _TaskSendParams(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      message: A2AMessage.fromJson(json['message'] as Map<String, dynamic>),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$TaskSendParamsToJson(_TaskSendParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'message': instance.message,
      'metadata': instance.metadata,
    };

_A2AMessage _$A2AMessageFromJson(Map<String, dynamic> json) => _A2AMessage(
  role: json['role'] as String,
  parts:
      (json['parts'] as List<dynamic>)
          .map((e) => Part.fromJson(e as Map<String, dynamic>))
          .toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$A2AMessageToJson(_A2AMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'parts': instance.parts,
      'metadata': instance.metadata,
    };

_Part _$PartFromJson(Map<String, dynamic> json) => _Part(
  text: json['text'] as String,
  type: json['type'] as String,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$PartToJson(_Part instance) => <String, dynamic>{
  'text': instance.text,
  'type': instance.type,
  'metadata': instance.metadata,
};
