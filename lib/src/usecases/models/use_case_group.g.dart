// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_case_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UseCaseGroup _$UseCaseGroupFromJson(Map<String, dynamic> json) =>
    _UseCaseGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      primary: json['primary'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$UseCaseGroupToJson(_UseCaseGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'primary': instance.primary,
      'description': instance.description,
    };
