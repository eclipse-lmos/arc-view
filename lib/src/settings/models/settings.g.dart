// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
  changed: json['changed'] as bool,
  newUserContext: json['newUserContext'] as String?,
  newSystemContext: json['newSystemContext'] as String?,
);

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
  'changed': instance.changed,
  'newUserContext': instance.newUserContext,
  'newSystemContext': instance.newSystemContext,
};
