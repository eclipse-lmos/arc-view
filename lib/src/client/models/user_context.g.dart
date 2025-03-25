// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserContext _$UserContextFromJson(Map<String, dynamic> json) => _UserContext(
  profile:
      (json['profile'] as List<dynamic>)
          .map((e) => ProfileEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
  userId: json['userId'] as String,
  userToken: json['userToken'] as String?,
);

Map<String, dynamic> _$UserContextToJson(_UserContext instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'userId': instance.userId,
      'userToken': instance.userToken,
    };

_ProfileEntry _$ProfileEntryFromJson(Map<String, dynamic> json) =>
    _ProfileEntry(key: json['key'] as String, value: json['value'] as String);

Map<String, dynamic> _$ProfileEntryToJson(_ProfileEntry instance) =>
    <String, dynamic>{'key': instance.key, 'value': instance.value};
