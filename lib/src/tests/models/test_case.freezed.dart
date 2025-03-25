// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestCase {

 String get name; String? get id; DateTime get createdAt; Conversation get expected; String? get description; String? get group; bool? get lastRunSuccess; DateTime? get lastRunAt;
/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestCaseCopyWith<TestCase> get copyWith => _$TestCaseCopyWithImpl<TestCase>(this as TestCase, _$identity);

  /// Serializes this TestCase to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestCase&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expected, expected) || other.expected == expected)&&(identical(other.description, description) || other.description == description)&&(identical(other.group, group) || other.group == group)&&(identical(other.lastRunSuccess, lastRunSuccess) || other.lastRunSuccess == lastRunSuccess)&&(identical(other.lastRunAt, lastRunAt) || other.lastRunAt == lastRunAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,createdAt,expected,description,group,lastRunSuccess,lastRunAt);

@override
String toString() {
  return 'TestCase(name: $name, id: $id, createdAt: $createdAt, expected: $expected, description: $description, group: $group, lastRunSuccess: $lastRunSuccess, lastRunAt: $lastRunAt)';
}


}

/// @nodoc
abstract mixin class $TestCaseCopyWith<$Res>  {
  factory $TestCaseCopyWith(TestCase value, $Res Function(TestCase) _then) = _$TestCaseCopyWithImpl;
@useResult
$Res call({
 String name, String? id, DateTime createdAt, Conversation expected, String? description, String? group, bool? lastRunSuccess, DateTime? lastRunAt
});


$ConversationCopyWith<$Res> get expected;

}
/// @nodoc
class _$TestCaseCopyWithImpl<$Res>
    implements $TestCaseCopyWith<$Res> {
  _$TestCaseCopyWithImpl(this._self, this._then);

  final TestCase _self;
  final $Res Function(TestCase) _then;

/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = freezed,Object? createdAt = null,Object? expected = null,Object? description = freezed,Object? group = freezed,Object? lastRunSuccess = freezed,Object? lastRunAt = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expected: null == expected ? _self.expected : expected // ignore: cast_nullable_to_non_nullable
as Conversation,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,lastRunSuccess: freezed == lastRunSuccess ? _self.lastRunSuccess : lastRunSuccess // ignore: cast_nullable_to_non_nullable
as bool?,lastRunAt: freezed == lastRunAt ? _self.lastRunAt : lastRunAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get expected {
  
  return $ConversationCopyWith<$Res>(_self.expected, (value) {
    return _then(_self.copyWith(expected: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TestCase extends TestCase {
   _TestCase({required this.name, this.id, required this.createdAt, required this.expected, this.description, this.group, this.lastRunSuccess, this.lastRunAt}): super._();
  factory _TestCase.fromJson(Map<String, dynamic> json) => _$TestCaseFromJson(json);

@override final  String name;
@override final  String? id;
@override final  DateTime createdAt;
@override final  Conversation expected;
@override final  String? description;
@override final  String? group;
@override final  bool? lastRunSuccess;
@override final  DateTime? lastRunAt;

/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestCaseCopyWith<_TestCase> get copyWith => __$TestCaseCopyWithImpl<_TestCase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestCaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestCase&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expected, expected) || other.expected == expected)&&(identical(other.description, description) || other.description == description)&&(identical(other.group, group) || other.group == group)&&(identical(other.lastRunSuccess, lastRunSuccess) || other.lastRunSuccess == lastRunSuccess)&&(identical(other.lastRunAt, lastRunAt) || other.lastRunAt == lastRunAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,createdAt,expected,description,group,lastRunSuccess,lastRunAt);

@override
String toString() {
  return 'TestCase(name: $name, id: $id, createdAt: $createdAt, expected: $expected, description: $description, group: $group, lastRunSuccess: $lastRunSuccess, lastRunAt: $lastRunAt)';
}


}

/// @nodoc
abstract mixin class _$TestCaseCopyWith<$Res> implements $TestCaseCopyWith<$Res> {
  factory _$TestCaseCopyWith(_TestCase value, $Res Function(_TestCase) _then) = __$TestCaseCopyWithImpl;
@override @useResult
$Res call({
 String name, String? id, DateTime createdAt, Conversation expected, String? description, String? group, bool? lastRunSuccess, DateTime? lastRunAt
});


@override $ConversationCopyWith<$Res> get expected;

}
/// @nodoc
class __$TestCaseCopyWithImpl<$Res>
    implements _$TestCaseCopyWith<$Res> {
  __$TestCaseCopyWithImpl(this._self, this._then);

  final _TestCase _self;
  final $Res Function(_TestCase) _then;

/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = freezed,Object? createdAt = null,Object? expected = null,Object? description = freezed,Object? group = freezed,Object? lastRunSuccess = freezed,Object? lastRunAt = freezed,}) {
  return _then(_TestCase(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expected: null == expected ? _self.expected : expected // ignore: cast_nullable_to_non_nullable
as Conversation,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,group: freezed == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String?,lastRunSuccess: freezed == lastRunSuccess ? _self.lastRunSuccess : lastRunSuccess // ignore: cast_nullable_to_non_nullable
as bool?,lastRunAt: freezed == lastRunAt ? _self.lastRunAt : lastRunAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of TestCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get expected {
  
  return $ConversationCopyWith<$Res>(_self.expected, (value) {
    return _then(_self.copyWith(expected: value));
  });
}
}

// dart format on
