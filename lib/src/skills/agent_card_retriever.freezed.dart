// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_card_retriever.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentCard {

 String get name; String get version; String get description; List<Skill>? get skills; List<String>? get defaultInputModes; List<String>? get defaultOutputModes;
/// Create a copy of AgentCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentCardCopyWith<AgentCard> get copyWith => _$AgentCardCopyWithImpl<AgentCard>(this as AgentCard, _$identity);

  /// Serializes this AgentCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentCard&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.skills, skills)&&const DeepCollectionEquality().equals(other.defaultInputModes, defaultInputModes)&&const DeepCollectionEquality().equals(other.defaultOutputModes, defaultOutputModes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,version,description,const DeepCollectionEquality().hash(skills),const DeepCollectionEquality().hash(defaultInputModes),const DeepCollectionEquality().hash(defaultOutputModes));

@override
String toString() {
  return 'AgentCard(name: $name, version: $version, description: $description, skills: $skills, defaultInputModes: $defaultInputModes, defaultOutputModes: $defaultOutputModes)';
}


}

/// @nodoc
abstract mixin class $AgentCardCopyWith<$Res>  {
  factory $AgentCardCopyWith(AgentCard value, $Res Function(AgentCard) _then) = _$AgentCardCopyWithImpl;
@useResult
$Res call({
 String name, String version, String description, List<Skill>? skills, List<String>? defaultInputModes, List<String>? defaultOutputModes
});




}
/// @nodoc
class _$AgentCardCopyWithImpl<$Res>
    implements $AgentCardCopyWith<$Res> {
  _$AgentCardCopyWithImpl(this._self, this._then);

  final AgentCard _self;
  final $Res Function(AgentCard) _then;

/// Create a copy of AgentCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? version = null,Object? description = null,Object? skills = freezed,Object? defaultInputModes = freezed,Object? defaultOutputModes = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,skills: freezed == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>?,defaultInputModes: freezed == defaultInputModes ? _self.defaultInputModes : defaultInputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,defaultOutputModes: freezed == defaultOutputModes ? _self.defaultOutputModes : defaultOutputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AgentCard implements AgentCard {
   _AgentCard({required this.name, required this.version, required this.description, final  List<Skill>? skills, final  List<String>? defaultInputModes, final  List<String>? defaultOutputModes}): _skills = skills,_defaultInputModes = defaultInputModes,_defaultOutputModes = defaultOutputModes;
  factory _AgentCard.fromJson(Map<String, dynamic> json) => _$AgentCardFromJson(json);

@override final  String name;
@override final  String version;
@override final  String description;
 final  List<Skill>? _skills;
@override List<Skill>? get skills {
  final value = _skills;
  if (value == null) return null;
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _defaultInputModes;
@override List<String>? get defaultInputModes {
  final value = _defaultInputModes;
  if (value == null) return null;
  if (_defaultInputModes is EqualUnmodifiableListView) return _defaultInputModes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _defaultOutputModes;
@override List<String>? get defaultOutputModes {
  final value = _defaultOutputModes;
  if (value == null) return null;
  if (_defaultOutputModes is EqualUnmodifiableListView) return _defaultOutputModes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AgentCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentCardCopyWith<_AgentCard> get copyWith => __$AgentCardCopyWithImpl<_AgentCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentCard&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._skills, _skills)&&const DeepCollectionEquality().equals(other._defaultInputModes, _defaultInputModes)&&const DeepCollectionEquality().equals(other._defaultOutputModes, _defaultOutputModes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,version,description,const DeepCollectionEquality().hash(_skills),const DeepCollectionEquality().hash(_defaultInputModes),const DeepCollectionEquality().hash(_defaultOutputModes));

@override
String toString() {
  return 'AgentCard(name: $name, version: $version, description: $description, skills: $skills, defaultInputModes: $defaultInputModes, defaultOutputModes: $defaultOutputModes)';
}


}

/// @nodoc
abstract mixin class _$AgentCardCopyWith<$Res> implements $AgentCardCopyWith<$Res> {
  factory _$AgentCardCopyWith(_AgentCard value, $Res Function(_AgentCard) _then) = __$AgentCardCopyWithImpl;
@override @useResult
$Res call({
 String name, String version, String description, List<Skill>? skills, List<String>? defaultInputModes, List<String>? defaultOutputModes
});




}
/// @nodoc
class __$AgentCardCopyWithImpl<$Res>
    implements _$AgentCardCopyWith<$Res> {
  __$AgentCardCopyWithImpl(this._self, this._then);

  final _AgentCard _self;
  final $Res Function(_AgentCard) _then;

/// Create a copy of AgentCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? version = null,Object? description = null,Object? skills = freezed,Object? defaultInputModes = freezed,Object? defaultOutputModes = freezed,}) {
  return _then(_AgentCard(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,skills: freezed == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<Skill>?,defaultInputModes: freezed == defaultInputModes ? _self._defaultInputModes : defaultInputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,defaultOutputModes: freezed == defaultOutputModes ? _self._defaultOutputModes : defaultOutputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$Skill {

 String get name; String get id; String get description; List<String>? get tags; List<String>? get inputModes; List<String>? get outputModes; List<String>? get examples;
/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillCopyWith<Skill> get copyWith => _$SkillCopyWithImpl<Skill>(this as Skill, _$identity);

  /// Serializes this Skill to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Skill&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.inputModes, inputModes)&&const DeepCollectionEquality().equals(other.outputModes, outputModes)&&const DeepCollectionEquality().equals(other.examples, examples));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,description,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(inputModes),const DeepCollectionEquality().hash(outputModes),const DeepCollectionEquality().hash(examples));

@override
String toString() {
  return 'Skill(name: $name, id: $id, description: $description, tags: $tags, inputModes: $inputModes, outputModes: $outputModes, examples: $examples)';
}


}

/// @nodoc
abstract mixin class $SkillCopyWith<$Res>  {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) _then) = _$SkillCopyWithImpl;
@useResult
$Res call({
 String name, String id, String description, List<String>? tags, List<String>? inputModes, List<String>? outputModes, List<String>? examples
});




}
/// @nodoc
class _$SkillCopyWithImpl<$Res>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._self, this._then);

  final Skill _self;
  final $Res Function(Skill) _then;

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? description = null,Object? tags = freezed,Object? inputModes = freezed,Object? outputModes = freezed,Object? examples = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,inputModes: freezed == inputModes ? _self.inputModes : inputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,outputModes: freezed == outputModes ? _self.outputModes : outputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,examples: freezed == examples ? _self.examples : examples // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Skill implements Skill {
   _Skill({required this.name, required this.id, required this.description, final  List<String>? tags, final  List<String>? inputModes, final  List<String>? outputModes, final  List<String>? examples}): _tags = tags,_inputModes = inputModes,_outputModes = outputModes,_examples = examples;
  factory _Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

@override final  String name;
@override final  String id;
@override final  String description;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _inputModes;
@override List<String>? get inputModes {
  final value = _inputModes;
  if (value == null) return null;
  if (_inputModes is EqualUnmodifiableListView) return _inputModes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _outputModes;
@override List<String>? get outputModes {
  final value = _outputModes;
  if (value == null) return null;
  if (_outputModes is EqualUnmodifiableListView) return _outputModes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _examples;
@override List<String>? get examples {
  final value = _examples;
  if (value == null) return null;
  if (_examples is EqualUnmodifiableListView) return _examples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillCopyWith<_Skill> get copyWith => __$SkillCopyWithImpl<_Skill>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Skill&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._inputModes, _inputModes)&&const DeepCollectionEquality().equals(other._outputModes, _outputModes)&&const DeepCollectionEquality().equals(other._examples, _examples));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,description,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_inputModes),const DeepCollectionEquality().hash(_outputModes),const DeepCollectionEquality().hash(_examples));

@override
String toString() {
  return 'Skill(name: $name, id: $id, description: $description, tags: $tags, inputModes: $inputModes, outputModes: $outputModes, examples: $examples)';
}


}

/// @nodoc
abstract mixin class _$SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$SkillCopyWith(_Skill value, $Res Function(_Skill) _then) = __$SkillCopyWithImpl;
@override @useResult
$Res call({
 String name, String id, String description, List<String>? tags, List<String>? inputModes, List<String>? outputModes, List<String>? examples
});




}
/// @nodoc
class __$SkillCopyWithImpl<$Res>
    implements _$SkillCopyWith<$Res> {
  __$SkillCopyWithImpl(this._self, this._then);

  final _Skill _self;
  final $Res Function(_Skill) _then;

/// Create a copy of Skill
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? description = null,Object? tags = freezed,Object? inputModes = freezed,Object? outputModes = freezed,Object? examples = freezed,}) {
  return _then(_Skill(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,inputModes: freezed == inputModes ? _self._inputModes : inputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,outputModes: freezed == outputModes ? _self._outputModes : outputModes // ignore: cast_nullable_to_non_nullable
as List<String>?,examples: freezed == examples ? _self._examples : examples // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
