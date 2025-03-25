// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_cases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestCases _$TestCasesFromJson(Map<String, dynamic> json) => _TestCases(
  testCases:
      (json['testCases'] as List<dynamic>)
          .map((e) => TestCase.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$TestCasesToJson(_TestCases instance) =>
    <String, dynamic>{'testCases': instance.testCases};
