// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_card_retriever.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentCard _$AgentCardFromJson(Map<String, dynamic> json) => _AgentCard(
  name: json['name'] as String,
  version: json['version'] as String,
  description: json['description'] as String,
  skills:
      (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
  defaultInputModes:
      (json['defaultInputModes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  defaultOutputModes:
      (json['defaultOutputModes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$AgentCardToJson(_AgentCard instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'skills': instance.skills,
      'defaultInputModes': instance.defaultInputModes,
      'defaultOutputModes': instance.defaultOutputModes,
    };

_Skill _$SkillFromJson(Map<String, dynamic> json) => _Skill(
  name: json['name'] as String,
  id: json['id'] as String,
  description: json['description'] as String,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  inputModes:
      (json['inputModes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  outputModes:
      (json['outputModes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  examples:
      (json['examples'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$SkillToJson(_Skill instance) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'description': instance.description,
  'tags': instance.tags,
  'inputModes': instance.inputModes,
  'outputModes': instance.outputModes,
  'examples': instance.examples,
};
