// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendTaskRequest {

 String get jsonrpc; String get method; String get id; TaskSendParams get params; Map<String, String>? get metadata;
/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTaskRequestCopyWith<SendTaskRequest> get copyWith => _$SendTaskRequestCopyWithImpl<SendTaskRequest>(this as SendTaskRequest, _$identity);

  /// Serializes this SendTaskRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTaskRequest&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.method, method) || other.method == method)&&(identical(other.id, id) || other.id == id)&&(identical(other.params, params) || other.params == params)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,method,id,params,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'SendTaskRequest(jsonrpc: $jsonrpc, method: $method, id: $id, params: $params, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $SendTaskRequestCopyWith<$Res>  {
  factory $SendTaskRequestCopyWith(SendTaskRequest value, $Res Function(SendTaskRequest) _then) = _$SendTaskRequestCopyWithImpl;
@useResult
$Res call({
 String jsonrpc, String method, String id, TaskSendParams params, Map<String, String>? metadata
});


$TaskSendParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SendTaskRequestCopyWithImpl<$Res>
    implements $SendTaskRequestCopyWith<$Res> {
  _$SendTaskRequestCopyWithImpl(this._self, this._then);

  final SendTaskRequest _self;
  final $Res Function(SendTaskRequest) _then;

/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jsonrpc = null,Object? method = null,Object? id = null,Object? params = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as TaskSendParams,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSendParamsCopyWith<$Res> get params {
  
  return $TaskSendParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SendTaskRequest implements SendTaskRequest {
   _SendTaskRequest({required this.jsonrpc, required this.method, required this.id, required this.params, final  Map<String, String>? metadata}): _metadata = metadata;
  factory _SendTaskRequest.fromJson(Map<String, dynamic> json) => _$SendTaskRequestFromJson(json);

@override final  String jsonrpc;
@override final  String method;
@override final  String id;
@override final  TaskSendParams params;
 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTaskRequestCopyWith<_SendTaskRequest> get copyWith => __$SendTaskRequestCopyWithImpl<_SendTaskRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendTaskRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTaskRequest&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&(identical(other.method, method) || other.method == method)&&(identical(other.id, id) || other.id == id)&&(identical(other.params, params) || other.params == params)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,method,id,params,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'SendTaskRequest(jsonrpc: $jsonrpc, method: $method, id: $id, params: $params, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$SendTaskRequestCopyWith<$Res> implements $SendTaskRequestCopyWith<$Res> {
  factory _$SendTaskRequestCopyWith(_SendTaskRequest value, $Res Function(_SendTaskRequest) _then) = __$SendTaskRequestCopyWithImpl;
@override @useResult
$Res call({
 String jsonrpc, String method, String id, TaskSendParams params, Map<String, String>? metadata
});


@override $TaskSendParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$SendTaskRequestCopyWithImpl<$Res>
    implements _$SendTaskRequestCopyWith<$Res> {
  __$SendTaskRequestCopyWithImpl(this._self, this._then);

  final _SendTaskRequest _self;
  final $Res Function(_SendTaskRequest) _then;

/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jsonrpc = null,Object? method = null,Object? id = null,Object? params = null,Object? metadata = freezed,}) {
  return _then(_SendTaskRequest(
jsonrpc: null == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as TaskSendParams,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of SendTaskRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSendParamsCopyWith<$Res> get params {
  
  return $TaskSendParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc
mixin _$TaskSendParams {

 String get id; String get sessionId; A2AMessage get message; Map<String, String>? get metadata;
/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskSendParamsCopyWith<TaskSendParams> get copyWith => _$TaskSendParamsCopyWithImpl<TaskSendParams>(this as TaskSendParams, _$identity);

  /// Serializes this TaskSendParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskSendParams&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionId,message,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'TaskSendParams(id: $id, sessionId: $sessionId, message: $message, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $TaskSendParamsCopyWith<$Res>  {
  factory $TaskSendParamsCopyWith(TaskSendParams value, $Res Function(TaskSendParams) _then) = _$TaskSendParamsCopyWithImpl;
@useResult
$Res call({
 String id, String sessionId, A2AMessage message, Map<String, String>? metadata
});


$A2AMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$TaskSendParamsCopyWithImpl<$Res>
    implements $TaskSendParamsCopyWith<$Res> {
  _$TaskSendParamsCopyWithImpl(this._self, this._then);

  final TaskSendParams _self;
  final $Res Function(TaskSendParams) _then;

/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sessionId = null,Object? message = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as A2AMessage,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$A2AMessageCopyWith<$Res> get message {
  
  return $A2AMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TaskSendParams implements TaskSendParams {
   _TaskSendParams({required this.id, required this.sessionId, required this.message, final  Map<String, String>? metadata}): _metadata = metadata;
  factory _TaskSendParams.fromJson(Map<String, dynamic> json) => _$TaskSendParamsFromJson(json);

@override final  String id;
@override final  String sessionId;
@override final  A2AMessage message;
 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskSendParamsCopyWith<_TaskSendParams> get copyWith => __$TaskSendParamsCopyWithImpl<_TaskSendParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskSendParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskSendParams&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionId,message,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'TaskSendParams(id: $id, sessionId: $sessionId, message: $message, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$TaskSendParamsCopyWith<$Res> implements $TaskSendParamsCopyWith<$Res> {
  factory _$TaskSendParamsCopyWith(_TaskSendParams value, $Res Function(_TaskSendParams) _then) = __$TaskSendParamsCopyWithImpl;
@override @useResult
$Res call({
 String id, String sessionId, A2AMessage message, Map<String, String>? metadata
});


@override $A2AMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$TaskSendParamsCopyWithImpl<$Res>
    implements _$TaskSendParamsCopyWith<$Res> {
  __$TaskSendParamsCopyWithImpl(this._self, this._then);

  final _TaskSendParams _self;
  final $Res Function(_TaskSendParams) _then;

/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sessionId = null,Object? message = null,Object? metadata = freezed,}) {
  return _then(_TaskSendParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as A2AMessage,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of TaskSendParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$A2AMessageCopyWith<$Res> get message {
  
  return $A2AMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$A2AMessage {

 String get role; List<Part> get parts; Map<String, String>? get metadata;
/// Create a copy of A2AMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$A2AMessageCopyWith<A2AMessage> get copyWith => _$A2AMessageCopyWithImpl<A2AMessage>(this as A2AMessage, _$identity);

  /// Serializes this A2AMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is A2AMessage&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.parts, parts)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,const DeepCollectionEquality().hash(parts),const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'A2AMessage(role: $role, parts: $parts, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $A2AMessageCopyWith<$Res>  {
  factory $A2AMessageCopyWith(A2AMessage value, $Res Function(A2AMessage) _then) = _$A2AMessageCopyWithImpl;
@useResult
$Res call({
 String role, List<Part> parts, Map<String, String>? metadata
});




}
/// @nodoc
class _$A2AMessageCopyWithImpl<$Res>
    implements $A2AMessageCopyWith<$Res> {
  _$A2AMessageCopyWithImpl(this._self, this._then);

  final A2AMessage _self;
  final $Res Function(A2AMessage) _then;

/// Create a copy of A2AMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? parts = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<Part>,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _A2AMessage implements A2AMessage {
   _A2AMessage({required this.role, required final  List<Part> parts, final  Map<String, String>? metadata}): _parts = parts,_metadata = metadata;
  factory _A2AMessage.fromJson(Map<String, dynamic> json) => _$A2AMessageFromJson(json);

@override final  String role;
 final  List<Part> _parts;
@override List<Part> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of A2AMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$A2AMessageCopyWith<_A2AMessage> get copyWith => __$A2AMessageCopyWithImpl<_A2AMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$A2AMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _A2AMessage&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._parts, _parts)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,const DeepCollectionEquality().hash(_parts),const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'A2AMessage(role: $role, parts: $parts, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$A2AMessageCopyWith<$Res> implements $A2AMessageCopyWith<$Res> {
  factory _$A2AMessageCopyWith(_A2AMessage value, $Res Function(_A2AMessage) _then) = __$A2AMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, List<Part> parts, Map<String, String>? metadata
});




}
/// @nodoc
class __$A2AMessageCopyWithImpl<$Res>
    implements _$A2AMessageCopyWith<$Res> {
  __$A2AMessageCopyWithImpl(this._self, this._then);

  final _A2AMessage _self;
  final $Res Function(_A2AMessage) _then;

/// Create a copy of A2AMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? parts = null,Object? metadata = freezed,}) {
  return _then(_A2AMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<Part>,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$Part {

 String get text; String get type; Map<String, String>? get metadata;
/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartCopyWith<Part> get copyWith => _$PartCopyWithImpl<Part>(this as Part, _$identity);

  /// Serializes this Part to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Part&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'Part(text: $text, type: $type, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $PartCopyWith<$Res>  {
  factory $PartCopyWith(Part value, $Res Function(Part) _then) = _$PartCopyWithImpl;
@useResult
$Res call({
 String text, String type, Map<String, String>? metadata
});




}
/// @nodoc
class _$PartCopyWithImpl<$Res>
    implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._self, this._then);

  final Part _self;
  final $Res Function(Part) _then;

/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? type = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Part implements Part {
   _Part({required this.text, required this.type, final  Map<String, String>? metadata}): _metadata = metadata;
  factory _Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);

@override final  String text;
@override final  String type;
 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartCopyWith<_Part> get copyWith => __$PartCopyWithImpl<_Part>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Part&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'Part(text: $text, type: $type, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$PartCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$PartCopyWith(_Part value, $Res Function(_Part) _then) = __$PartCopyWithImpl;
@override @useResult
$Res call({
 String text, String type, Map<String, String>? metadata
});




}
/// @nodoc
class __$PartCopyWithImpl<$Res>
    implements _$PartCopyWith<$Res> {
  __$PartCopyWithImpl(this._self, this._then);

  final _Part _self;
  final $Res Function(_Part) _then;

/// Create a copy of Part
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? type = null,Object? metadata = freezed,}) {
  return _then(_Part(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
