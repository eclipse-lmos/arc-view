// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_run.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestRunImpl _$$TestRunImplFromJson(Map<String, dynamic> json) =>
    _$TestRunImpl(
      testCase: TestCase.fromJson(json['testCase'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      conversationId: json['conversationId'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$$TestRunImplToJson(_$TestRunImpl instance) =>
    <String, dynamic>{
      'testCase': instance.testCase,
      'success': instance.success,
      'conversationId': instance.conversationId,
      'startedAt': instance.startedAt.toIso8601String(),
    };
