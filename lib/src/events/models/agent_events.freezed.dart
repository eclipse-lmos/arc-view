// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AgentEvent {

 String get type; String get payload; String? get conversationId;
/// Create a copy of AgentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgentEventCopyWith<AgentEvent> get copyWith => _$AgentEventCopyWithImpl<AgentEvent>(this as AgentEvent, _$identity);

  /// Serializes this AgentEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AgentEvent&&(identical(other.type, type) || other.type == type)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,payload,conversationId);

@override
String toString() {
  return 'AgentEvent(type: $type, payload: $payload, conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class $AgentEventCopyWith<$Res>  {
  factory $AgentEventCopyWith(AgentEvent value, $Res Function(AgentEvent) _then) = _$AgentEventCopyWithImpl;
@useResult
$Res call({
 String type, String payload, String? conversationId
});




}
/// @nodoc
class _$AgentEventCopyWithImpl<$Res>
    implements $AgentEventCopyWith<$Res> {
  _$AgentEventCopyWithImpl(this._self, this._then);

  final AgentEvent _self;
  final $Res Function(AgentEvent) _then;

/// Create a copy of AgentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? payload = null,Object? conversationId = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AgentEvent implements AgentEvent {
   _AgentEvent({required this.type, required this.payload, this.conversationId});
  factory _AgentEvent.fromJson(Map<String, dynamic> json) => _$AgentEventFromJson(json);

@override final  String type;
@override final  String payload;
@override final  String? conversationId;

/// Create a copy of AgentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AgentEventCopyWith<_AgentEvent> get copyWith => __$AgentEventCopyWithImpl<_AgentEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AgentEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AgentEvent&&(identical(other.type, type) || other.type == type)&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,payload,conversationId);

@override
String toString() {
  return 'AgentEvent(type: $type, payload: $payload, conversationId: $conversationId)';
}


}

/// @nodoc
abstract mixin class _$AgentEventCopyWith<$Res> implements $AgentEventCopyWith<$Res> {
  factory _$AgentEventCopyWith(_AgentEvent value, $Res Function(_AgentEvent) _then) = __$AgentEventCopyWithImpl;
@override @useResult
$Res call({
 String type, String payload, String? conversationId
});




}
/// @nodoc
class __$AgentEventCopyWithImpl<$Res>
    implements _$AgentEventCopyWith<$Res> {
  __$AgentEventCopyWithImpl(this._self, this._then);

  final _AgentEvent _self;
  final $Res Function(_AgentEvent) _then;

/// Create a copy of AgentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? payload = null,Object? conversationId = freezed,}) {
  return _then(_AgentEvent(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
