// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestCase _$TestCaseFromJson(Map<String, dynamic> json) => _TestCase(
  name: json['name'] as String,
  id: json['id'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  expected: Conversation.fromJson(json['expected'] as Map<String, dynamic>),
  description: json['description'] as String?,
  group: json['group'] as String?,
  lastRunSuccess: json['lastRunSuccess'] as bool?,
  lastRunAt:
      json['lastRunAt'] == null
          ? null
          : DateTime.parse(json['lastRunAt'] as String),
);

Map<String, dynamic> _$TestCaseToJson(_TestCase instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'expected': instance.expected,
  'description': instance.description,
  'group': instance.group,
  'lastRunSuccess': instance.lastRunSuccess,
  'lastRunAt': instance.lastRunAt?.toIso8601String(),
};
