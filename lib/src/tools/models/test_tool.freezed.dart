// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_tool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestTool {

 String get name; String get title; String get id; String get description; String get value; List<TestToolParameter>? get parameters;
/// Create a copy of TestTool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestToolCopyWith<TestTool> get copyWith => _$TestToolCopyWithImpl<TestTool>(this as TestTool, _$identity);

  /// Serializes this TestTool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestTool&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.parameters, parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,id,description,value,const DeepCollectionEquality().hash(parameters));

@override
String toString() {
  return 'TestTool(name: $name, title: $title, id: $id, description: $description, value: $value, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $TestToolCopyWith<$Res>  {
  factory $TestToolCopyWith(TestTool value, $Res Function(TestTool) _then) = _$TestToolCopyWithImpl;
@useResult
$Res call({
 String name, String title, String id, String description, String value, List<TestToolParameter>? parameters
});




}
/// @nodoc
class _$TestToolCopyWithImpl<$Res>
    implements $TestToolCopyWith<$Res> {
  _$TestToolCopyWithImpl(this._self, this._then);

  final TestTool _self;
  final $Res Function(TestTool) _then;

/// Create a copy of TestTool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? id = null,Object? description = null,Object? value = null,Object? parameters = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<TestToolParameter>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TestTool extends TestTool {
   _TestTool({required this.name, required this.title, required this.id, required this.description, required this.value, final  List<TestToolParameter>? parameters}): _parameters = parameters,super._();
  factory _TestTool.fromJson(Map<String, dynamic> json) => _$TestToolFromJson(json);

@override final  String name;
@override final  String title;
@override final  String id;
@override final  String description;
@override final  String value;
 final  List<TestToolParameter>? _parameters;
@override List<TestToolParameter>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TestTool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestToolCopyWith<_TestTool> get copyWith => __$TestToolCopyWithImpl<_TestTool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestToolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestTool&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other._parameters, _parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,id,description,value,const DeepCollectionEquality().hash(_parameters));

@override
String toString() {
  return 'TestTool(name: $name, title: $title, id: $id, description: $description, value: $value, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$TestToolCopyWith<$Res> implements $TestToolCopyWith<$Res> {
  factory _$TestToolCopyWith(_TestTool value, $Res Function(_TestTool) _then) = __$TestToolCopyWithImpl;
@override @useResult
$Res call({
 String name, String title, String id, String description, String value, List<TestToolParameter>? parameters
});




}
/// @nodoc
class __$TestToolCopyWithImpl<$Res>
    implements _$TestToolCopyWith<$Res> {
  __$TestToolCopyWithImpl(this._self, this._then);

  final _TestTool _self;
  final $Res Function(_TestTool) _then;

/// Create a copy of TestTool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? id = null,Object? description = null,Object? value = null,Object? parameters = freezed,}) {
  return _then(_TestTool(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<TestToolParameter>?,
  ));
}


}


/// @nodoc
mixin _$TestToolParameter {

 String get name; String get description; String get type;
/// Create a copy of TestToolParameter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestToolParameterCopyWith<TestToolParameter> get copyWith => _$TestToolParameterCopyWithImpl<TestToolParameter>(this as TestToolParameter, _$identity);

  /// Serializes this TestToolParameter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestToolParameter&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,type);

@override
String toString() {
  return 'TestToolParameter(name: $name, description: $description, type: $type)';
}


}

/// @nodoc
abstract mixin class $TestToolParameterCopyWith<$Res>  {
  factory $TestToolParameterCopyWith(TestToolParameter value, $Res Function(TestToolParameter) _then) = _$TestToolParameterCopyWithImpl;
@useResult
$Res call({
 String name, String description, String type
});




}
/// @nodoc
class _$TestToolParameterCopyWithImpl<$Res>
    implements $TestToolParameterCopyWith<$Res> {
  _$TestToolParameterCopyWithImpl(this._self, this._then);

  final TestToolParameter _self;
  final $Res Function(TestToolParameter) _then;

/// Create a copy of TestToolParameter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? type = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TestToolParameter extends TestToolParameter {
   _TestToolParameter({required this.name, required this.description, required this.type}): super._();
  factory _TestToolParameter.fromJson(Map<String, dynamic> json) => _$TestToolParameterFromJson(json);

@override final  String name;
@override final  String description;
@override final  String type;

/// Create a copy of TestToolParameter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestToolParameterCopyWith<_TestToolParameter> get copyWith => __$TestToolParameterCopyWithImpl<_TestToolParameter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestToolParameterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestToolParameter&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,type);

@override
String toString() {
  return 'TestToolParameter(name: $name, description: $description, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TestToolParameterCopyWith<$Res> implements $TestToolParameterCopyWith<$Res> {
  factory _$TestToolParameterCopyWith(_TestToolParameter value, $Res Function(_TestToolParameter) _then) = __$TestToolParameterCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String type
});




}
/// @nodoc
class __$TestToolParameterCopyWithImpl<$Res>
    implements _$TestToolParameterCopyWith<$Res> {
  __$TestToolParameterCopyWithImpl(this._self, this._then);

  final _TestToolParameter _self;
  final $Res Function(_TestToolParameter) _then;

/// Create a copy of TestToolParameter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? type = null,}) {
  return _then(_TestToolParameter(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
