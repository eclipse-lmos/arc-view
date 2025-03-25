// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TestTool _$TestToolFromJson(Map<String, dynamic> json) => _TestTool(
  name: json['name'] as String,
  title: json['title'] as String,
  id: json['id'] as String,
  description: json['description'] as String,
  value: json['value'] as String,
  parameters:
      (json['parameters'] as List<dynamic>?)
          ?.map((e) => TestToolParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$TestToolToJson(_TestTool instance) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'id': instance.id,
  'description': instance.description,
  'value': instance.value,
  'parameters': instance.parameters,
};

_TestToolParameter _$TestToolParameterFromJson(Map<String, dynamic> json) =>
    _TestToolParameter(
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$TestToolParameterToJson(_TestToolParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
    };
