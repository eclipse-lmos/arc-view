// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_run.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestRunImpl _$$TestRunImplFromJson(Map<String, dynamic> json) =>
    _$TestRunImpl(
      testCase: TestCase.fromJson(json['testCase'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      conversation:
          Conversation.fromJson(json['conversation'] as Map<String, dynamic>),
      startedAt: DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$$TestRunImplToJson(_$TestRunImpl instance) =>
    <String, dynamic>{
      'testCase': instance.testCase,
      'success': instance.success,
      'conversation': instance.conversation,
      'startedAt': instance.startedAt.toIso8601String(),
    };
