// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserContext {

 List<ProfileEntry> get profile; String get userId; String? get userToken;
/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserContextCopyWith<UserContext> get copyWith => _$UserContextCopyWithImpl<UserContext>(this as UserContext, _$identity);

  /// Serializes this UserContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserContext&&const DeepCollectionEquality().equals(other.profile, profile)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userToken, userToken) || other.userToken == userToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(profile),userId,userToken);

@override
String toString() {
  return 'UserContext(profile: $profile, userId: $userId, userToken: $userToken)';
}


}

/// @nodoc
abstract mixin class $UserContextCopyWith<$Res>  {
  factory $UserContextCopyWith(UserContext value, $Res Function(UserContext) _then) = _$UserContextCopyWithImpl;
@useResult
$Res call({
 List<ProfileEntry> profile, String userId, String? userToken
});




}
/// @nodoc
class _$UserContextCopyWithImpl<$Res>
    implements $UserContextCopyWith<$Res> {
  _$UserContextCopyWithImpl(this._self, this._then);

  final UserContext _self;
  final $Res Function(UserContext) _then;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? userId = null,Object? userToken = freezed,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as List<ProfileEntry>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userToken: freezed == userToken ? _self.userToken : userToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserContext implements UserContext {
   _UserContext({required final  List<ProfileEntry> profile, required this.userId, this.userToken}): _profile = profile;
  factory _UserContext.fromJson(Map<String, dynamic> json) => _$UserContextFromJson(json);

 final  List<ProfileEntry> _profile;
@override List<ProfileEntry> get profile {
  if (_profile is EqualUnmodifiableListView) return _profile;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profile);
}

@override final  String userId;
@override final  String? userToken;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserContextCopyWith<_UserContext> get copyWith => __$UserContextCopyWithImpl<_UserContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserContext&&const DeepCollectionEquality().equals(other._profile, _profile)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userToken, userToken) || other.userToken == userToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_profile),userId,userToken);

@override
String toString() {
  return 'UserContext(profile: $profile, userId: $userId, userToken: $userToken)';
}


}

/// @nodoc
abstract mixin class _$UserContextCopyWith<$Res> implements $UserContextCopyWith<$Res> {
  factory _$UserContextCopyWith(_UserContext value, $Res Function(_UserContext) _then) = __$UserContextCopyWithImpl;
@override @useResult
$Res call({
 List<ProfileEntry> profile, String userId, String? userToken
});




}
/// @nodoc
class __$UserContextCopyWithImpl<$Res>
    implements _$UserContextCopyWith<$Res> {
  __$UserContextCopyWithImpl(this._self, this._then);

  final _UserContext _self;
  final $Res Function(_UserContext) _then;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? userId = null,Object? userToken = freezed,}) {
  return _then(_UserContext(
profile: null == profile ? _self._profile : profile // ignore: cast_nullable_to_non_nullable
as List<ProfileEntry>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userToken: freezed == userToken ? _self.userToken : userToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProfileEntry {

 String get key; String get value;
/// Create a copy of ProfileEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEntryCopyWith<ProfileEntry> get copyWith => _$ProfileEntryCopyWithImpl<ProfileEntry>(this as ProfileEntry, _$identity);

  /// Serializes this ProfileEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEntry&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'ProfileEntry(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class $ProfileEntryCopyWith<$Res>  {
  factory $ProfileEntryCopyWith(ProfileEntry value, $Res Function(ProfileEntry) _then) = _$ProfileEntryCopyWithImpl;
@useResult
$Res call({
 String key, String value
});




}
/// @nodoc
class _$ProfileEntryCopyWithImpl<$Res>
    implements $ProfileEntryCopyWith<$Res> {
  _$ProfileEntryCopyWithImpl(this._self, this._then);

  final ProfileEntry _self;
  final $Res Function(ProfileEntry) _then;

/// Create a copy of ProfileEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProfileEntry implements ProfileEntry {
   _ProfileEntry({required this.key, required this.value});
  factory _ProfileEntry.fromJson(Map<String, dynamic> json) => _$ProfileEntryFromJson(json);

@override final  String key;
@override final  String value;

/// Create a copy of ProfileEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEntryCopyWith<_ProfileEntry> get copyWith => __$ProfileEntryCopyWithImpl<_ProfileEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEntry&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'ProfileEntry(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ProfileEntryCopyWith<$Res> implements $ProfileEntryCopyWith<$Res> {
  factory _$ProfileEntryCopyWith(_ProfileEntry value, $Res Function(_ProfileEntry) _then) = __$ProfileEntryCopyWithImpl;
@override @useResult
$Res call({
 String key, String value
});




}
/// @nodoc
class __$ProfileEntryCopyWithImpl<$Res>
    implements _$ProfileEntryCopyWith<$Res> {
  __$ProfileEntryCopyWithImpl(this._self, this._then);

  final _ProfileEntry _self;
  final $Res Function(_ProfileEntry) _then;

/// Create a copy of ProfileEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = null,}) {
  return _then(_ProfileEntry(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
