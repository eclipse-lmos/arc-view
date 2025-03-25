// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_cases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UseCases {

 List<UseCase> get cases; int get selected;
/// Create a copy of UseCases
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseCasesCopyWith<UseCases> get copyWith => _$UseCasesCopyWithImpl<UseCases>(this as UseCases, _$identity);

  /// Serializes this UseCases to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseCases&&const DeepCollectionEquality().equals(other.cases, cases)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cases),selected);

@override
String toString() {
  return 'UseCases(cases: $cases, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $UseCasesCopyWith<$Res>  {
  factory $UseCasesCopyWith(UseCases value, $Res Function(UseCases) _then) = _$UseCasesCopyWithImpl;
@useResult
$Res call({
 List<UseCase> cases, int selected
});




}
/// @nodoc
class _$UseCasesCopyWithImpl<$Res>
    implements $UseCasesCopyWith<$Res> {
  _$UseCasesCopyWithImpl(this._self, this._then);

  final UseCases _self;
  final $Res Function(UseCases) _then;

/// Create a copy of UseCases
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cases = null,Object? selected = null,}) {
  return _then(_self.copyWith(
cases: null == cases ? _self.cases : cases // ignore: cast_nullable_to_non_nullable
as List<UseCase>,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UseCases extends UseCases {
   _UseCases({required final  List<UseCase> cases, required this.selected}): _cases = cases,super._();
  factory _UseCases.fromJson(Map<String, dynamic> json) => _$UseCasesFromJson(json);

 final  List<UseCase> _cases;
@override List<UseCase> get cases {
  if (_cases is EqualUnmodifiableListView) return _cases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cases);
}

@override final  int selected;

/// Create a copy of UseCases
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseCasesCopyWith<_UseCases> get copyWith => __$UseCasesCopyWithImpl<_UseCases>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseCasesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseCases&&const DeepCollectionEquality().equals(other._cases, _cases)&&(identical(other.selected, selected) || other.selected == selected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cases),selected);

@override
String toString() {
  return 'UseCases(cases: $cases, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$UseCasesCopyWith<$Res> implements $UseCasesCopyWith<$Res> {
  factory _$UseCasesCopyWith(_UseCases value, $Res Function(_UseCases) _then) = __$UseCasesCopyWithImpl;
@override @useResult
$Res call({
 List<UseCase> cases, int selected
});




}
/// @nodoc
class __$UseCasesCopyWithImpl<$Res>
    implements _$UseCasesCopyWith<$Res> {
  __$UseCasesCopyWithImpl(this._self, this._then);

  final _UseCases _self;
  final $Res Function(_UseCases) _then;

/// Create a copy of UseCases
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cases = null,Object? selected = null,}) {
  return _then(_UseCases(
cases: null == cases ? _self._cases : cases // ignore: cast_nullable_to_non_nullable
as List<UseCase>,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$UseCase {

 String get name; String? get id; DateTime get createdAt; String get content; String? get description; List<String>? get tags;
/// Create a copy of UseCase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseCaseCopyWith<UseCase> get copyWith => _$UseCaseCopyWithImpl<UseCase>(this as UseCase, _$identity);

  /// Serializes this UseCase to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseCase&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,createdAt,content,description,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'UseCase(name: $name, id: $id, createdAt: $createdAt, content: $content, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UseCaseCopyWith<$Res>  {
  factory $UseCaseCopyWith(UseCase value, $Res Function(UseCase) _then) = _$UseCaseCopyWithImpl;
@useResult
$Res call({
 String name, String? id, DateTime createdAt, String content, String? description, List<String>? tags
});




}
/// @nodoc
class _$UseCaseCopyWithImpl<$Res>
    implements $UseCaseCopyWith<$Res> {
  _$UseCaseCopyWithImpl(this._self, this._then);

  final UseCase _self;
  final $Res Function(UseCase) _then;

/// Create a copy of UseCase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = freezed,Object? createdAt = null,Object? content = null,Object? description = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UseCase extends UseCase {
   _UseCase({required this.name, this.id, required this.createdAt, required this.content, this.description, final  List<String>? tags}): _tags = tags,super._();
  factory _UseCase.fromJson(Map<String, dynamic> json) => _$UseCaseFromJson(json);

@override final  String name;
@override final  String? id;
@override final  DateTime createdAt;
@override final  String content;
@override final  String? description;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UseCase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseCaseCopyWith<_UseCase> get copyWith => __$UseCaseCopyWithImpl<_UseCase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseCaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseCase&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.content, content) || other.content == content)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,createdAt,content,description,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'UseCase(name: $name, id: $id, createdAt: $createdAt, content: $content, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UseCaseCopyWith<$Res> implements $UseCaseCopyWith<$Res> {
  factory _$UseCaseCopyWith(_UseCase value, $Res Function(_UseCase) _then) = __$UseCaseCopyWithImpl;
@override @useResult
$Res call({
 String name, String? id, DateTime createdAt, String content, String? description, List<String>? tags
});




}
/// @nodoc
class __$UseCaseCopyWithImpl<$Res>
    implements _$UseCaseCopyWith<$Res> {
  __$UseCaseCopyWithImpl(this._self, this._then);

  final _UseCase _self;
  final $Res Function(_UseCase) _then;

/// Create a copy of UseCase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = freezed,Object? createdAt = null,Object? content = null,Object? description = freezed,Object? tags = freezed,}) {
  return _then(_UseCase(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
