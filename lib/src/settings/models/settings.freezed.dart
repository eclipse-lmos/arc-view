// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 bool get changed; String? get newUserContext; String? get newSystemContext;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.changed, changed) || other.changed == changed)&&(identical(other.newUserContext, newUserContext) || other.newUserContext == newUserContext)&&(identical(other.newSystemContext, newSystemContext) || other.newSystemContext == newSystemContext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,changed,newUserContext,newSystemContext);

@override
String toString() {
  return 'Settings(changed: $changed, newUserContext: $newUserContext, newSystemContext: $newSystemContext)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 bool changed, String? newUserContext, String? newSystemContext
});




}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? changed = null,Object? newUserContext = freezed,Object? newSystemContext = freezed,}) {
  return _then(_self.copyWith(
changed: null == changed ? _self.changed : changed // ignore: cast_nullable_to_non_nullable
as bool,newUserContext: freezed == newUserContext ? _self.newUserContext : newUserContext // ignore: cast_nullable_to_non_nullable
as String?,newSystemContext: freezed == newSystemContext ? _self.newSystemContext : newSystemContext // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
   _Settings({required this.changed, required this.newUserContext, required this.newSystemContext});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override final  bool changed;
@override final  String? newUserContext;
@override final  String? newSystemContext;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.changed, changed) || other.changed == changed)&&(identical(other.newUserContext, newUserContext) || other.newUserContext == newUserContext)&&(identical(other.newSystemContext, newSystemContext) || other.newSystemContext == newSystemContext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,changed,newUserContext,newSystemContext);

@override
String toString() {
  return 'Settings(changed: $changed, newUserContext: $newUserContext, newSystemContext: $newSystemContext)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 bool changed, String? newUserContext, String? newSystemContext
});




}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? changed = null,Object? newUserContext = freezed,Object? newSystemContext = freezed,}) {
  return _then(_Settings(
changed: null == changed ? _self.changed : changed // ignore: cast_nullable_to_non_nullable
as bool,newUserContext: freezed == newUserContext ? _self.newUserContext : newUserContext // ignore: cast_nullable_to_non_nullable
as String?,newSystemContext: freezed == newSystemContext ? _self.newSystemContext : newSystemContext // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
