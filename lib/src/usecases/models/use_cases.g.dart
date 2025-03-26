// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_cases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UseCases _$UseCasesFromJson(Map<String, dynamic> json) => _UseCases(
  cases:
      (json['cases'] as List<dynamic>)
          .map((e) => UseCase.fromJson(e as Map<String, dynamic>))
          .toList(),
  selected: (json['selected'] as num).toInt(),
);

Map<String, dynamic> _$UseCasesToJson(_UseCases instance) => <String, dynamic>{
  'cases': instance.cases,
  'selected': instance.selected,
};

_UseCase _$UseCaseFromJson(Map<String, dynamic> json) => _UseCase(
  name: json['name'] as String,
  id: json['id'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  content: json['content'] as String,
  description: json['description'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  version: json['version'] as String?,
);

Map<String, dynamic> _$UseCaseToJson(_UseCase instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'content': instance.content,
  'description': instance.description,
  'tags': instance.tags,
  'version': instance.version,
};
