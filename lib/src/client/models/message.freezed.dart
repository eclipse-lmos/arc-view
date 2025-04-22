// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentResult {

 List<Message> get messages; double get responseTime;
/// Create a copy of AgentResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentResultCopyWith<AgentResult> get copyWith => _$AgentResultCopyWithImpl<AgentResult>(this as AgentResult, _$identity);

  /// Serializes this AgentResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentResult&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),responseTime);

@override
String toString() {
  return 'AgentResult(messages: $messages, responseTime: $responseTime)';
}


}

/// @nodoc
abstract mixin class $AgentResultCopyWith<$Res>  {
  factory $AgentResultCopyWith(AgentResult value, $Res Function(AgentResult) _then) = _$AgentResultCopyWithImpl;
@useResult
$Res call({
 List<Message> messages, double responseTime
});




}
/// @nodoc
class _$AgentResultCopyWithImpl<$Res>
    implements $AgentResultCopyWith<$Res> {
  _$AgentResultCopyWithImpl(this._self, this._then);

  final AgentResult _self;
  final $Res Function(AgentResult) _then;

/// Create a copy of AgentResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? responseTime = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AgentResult implements AgentResult {
   _AgentResult({required final  List<Message> messages, required this.responseTime}): _messages = messages;
  factory _AgentResult.fromJson(Map<String, dynamic> json) => _$AgentResultFromJson(json);

 final  List<Message> _messages;
@override List<Message> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  double responseTime;

/// Create a copy of AgentResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentResultCopyWith<_AgentResult> get copyWith => __$AgentResultCopyWithImpl<_AgentResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentResult&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),responseTime);

@override
String toString() {
  return 'AgentResult(messages: $messages, responseTime: $responseTime)';
}


}

/// @nodoc
abstract mixin class _$AgentResultCopyWith<$Res> implements $AgentResultCopyWith<$Res> {
  factory _$AgentResultCopyWith(_AgentResult value, $Res Function(_AgentResult) _then) = __$AgentResultCopyWithImpl;
@override @useResult
$Res call({
 List<Message> messages, double responseTime
});




}
/// @nodoc
class __$AgentResultCopyWithImpl<$Res>
    implements _$AgentResultCopyWith<$Res> {
  __$AgentResultCopyWithImpl(this._self, this._then);

  final _AgentResult _self;
  final $Res Function(_AgentResult) _then;

/// Create a copy of AgentResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? responseTime = null,}) {
  return _then(_AgentResult(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Message>,responseTime: null == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Message {

 String get role; String get content; Set<String>? get symbols;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.symbols, symbols));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,const DeepCollectionEquality().hash(symbols));

@override
String toString() {
  return 'Message(role: $role, content: $content, symbols: $symbols)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
 String role, String content, Set<String>? symbols
});




}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,Object? symbols = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,symbols: freezed == symbols ? _self.symbols : symbols // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Message implements Message {
   _Message({required this.role, required this.content, final  Set<String>? symbols}): _symbols = symbols;
  factory _Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

@override final  String role;
@override final  String content;
 final  Set<String>? _symbols;
@override Set<String>? get symbols {
  final value = _symbols;
  if (value == null) return null;
  if (_symbols is EqualUnmodifiableSetView) return _symbols;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._symbols, _symbols));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,const DeepCollectionEquality().hash(_symbols));

@override
String toString() {
  return 'Message(role: $role, content: $content, symbols: $symbols)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
 String role, String content, Set<String>? symbols
});




}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,Object? symbols = freezed,}) {
  return _then(_Message(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,symbols: freezed == symbols ? _self._symbols : symbols // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}


}

// dart format on
