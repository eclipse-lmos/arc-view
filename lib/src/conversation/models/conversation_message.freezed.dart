// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationMessage {

 MessageType get type; String get conversationId; String get content; List<BinaryData>? get binaryData; double? get responseTime; String? get agent; Set<String>? get symbols;
/// Create a copy of ConversationMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationMessageCopyWith<ConversationMessage> get copyWith => _$ConversationMessageCopyWithImpl<ConversationMessage>(this as ConversationMessage, _$identity);

  /// Serializes this ConversationMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationMessage&&(identical(other.type, type) || other.type == type)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.binaryData, binaryData)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.agent, agent) || other.agent == agent)&&const DeepCollectionEquality().equals(other.symbols, symbols));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,conversationId,content,const DeepCollectionEquality().hash(binaryData),responseTime,agent,const DeepCollectionEquality().hash(symbols));

@override
String toString() {
  return 'ConversationMessage(type: $type, conversationId: $conversationId, content: $content, binaryData: $binaryData, responseTime: $responseTime, agent: $agent, symbols: $symbols)';
}


}

/// @nodoc
abstract mixin class $ConversationMessageCopyWith<$Res>  {
  factory $ConversationMessageCopyWith(ConversationMessage value, $Res Function(ConversationMessage) _then) = _$ConversationMessageCopyWithImpl;
@useResult
$Res call({
 MessageType type, String conversationId, String content, List<BinaryData>? binaryData, double? responseTime, String? agent, Set<String>? symbols
});




}
/// @nodoc
class _$ConversationMessageCopyWithImpl<$Res>
    implements $ConversationMessageCopyWith<$Res> {
  _$ConversationMessageCopyWithImpl(this._self, this._then);

  final ConversationMessage _self;
  final $Res Function(ConversationMessage) _then;

/// Create a copy of ConversationMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? conversationId = null,Object? content = null,Object? binaryData = freezed,Object? responseTime = freezed,Object? agent = freezed,Object? symbols = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,binaryData: freezed == binaryData ? _self.binaryData : binaryData // ignore: cast_nullable_to_non_nullable
as List<BinaryData>?,responseTime: freezed == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as double?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,symbols: freezed == symbols ? _self.symbols : symbols // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConversationMessage extends ConversationMessage {
   _ConversationMessage({required this.type, required this.conversationId, required this.content, final  List<BinaryData>? binaryData, this.responseTime, this.agent, final  Set<String>? symbols}): _binaryData = binaryData,_symbols = symbols,super._();
  factory _ConversationMessage.fromJson(Map<String, dynamic> json) => _$ConversationMessageFromJson(json);

@override final  MessageType type;
@override final  String conversationId;
@override final  String content;
 final  List<BinaryData>? _binaryData;
@override List<BinaryData>? get binaryData {
  final value = _binaryData;
  if (value == null) return null;
  if (_binaryData is EqualUnmodifiableListView) return _binaryData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? responseTime;
@override final  String? agent;
 final  Set<String>? _symbols;
@override Set<String>? get symbols {
  final value = _symbols;
  if (value == null) return null;
  if (_symbols is EqualUnmodifiableSetView) return _symbols;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of ConversationMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationMessageCopyWith<_ConversationMessage> get copyWith => __$ConversationMessageCopyWithImpl<_ConversationMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationMessage&&(identical(other.type, type) || other.type == type)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._binaryData, _binaryData)&&(identical(other.responseTime, responseTime) || other.responseTime == responseTime)&&(identical(other.agent, agent) || other.agent == agent)&&const DeepCollectionEquality().equals(other._symbols, _symbols));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,conversationId,content,const DeepCollectionEquality().hash(_binaryData),responseTime,agent,const DeepCollectionEquality().hash(_symbols));

@override
String toString() {
  return 'ConversationMessage(type: $type, conversationId: $conversationId, content: $content, binaryData: $binaryData, responseTime: $responseTime, agent: $agent, symbols: $symbols)';
}


}

/// @nodoc
abstract mixin class _$ConversationMessageCopyWith<$Res> implements $ConversationMessageCopyWith<$Res> {
  factory _$ConversationMessageCopyWith(_ConversationMessage value, $Res Function(_ConversationMessage) _then) = __$ConversationMessageCopyWithImpl;
@override @useResult
$Res call({
 MessageType type, String conversationId, String content, List<BinaryData>? binaryData, double? responseTime, String? agent, Set<String>? symbols
});




}
/// @nodoc
class __$ConversationMessageCopyWithImpl<$Res>
    implements _$ConversationMessageCopyWith<$Res> {
  __$ConversationMessageCopyWithImpl(this._self, this._then);

  final _ConversationMessage _self;
  final $Res Function(_ConversationMessage) _then;

/// Create a copy of ConversationMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? conversationId = null,Object? content = null,Object? binaryData = freezed,Object? responseTime = freezed,Object? agent = freezed,Object? symbols = freezed,}) {
  return _then(_ConversationMessage(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,binaryData: freezed == binaryData ? _self._binaryData : binaryData // ignore: cast_nullable_to_non_nullable
as List<BinaryData>?,responseTime: freezed == responseTime ? _self.responseTime : responseTime // ignore: cast_nullable_to_non_nullable
as double?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,symbols: freezed == symbols ? _self._symbols : symbols // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}


}


/// @nodoc
mixin _$BinaryData {

 String? get dataAsBase64; String get mimeType; String? get source;
/// Create a copy of BinaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BinaryDataCopyWith<BinaryData> get copyWith => _$BinaryDataCopyWithImpl<BinaryData>(this as BinaryData, _$identity);

  /// Serializes this BinaryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BinaryData&&(identical(other.dataAsBase64, dataAsBase64) || other.dataAsBase64 == dataAsBase64)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataAsBase64,mimeType,source);

@override
String toString() {
  return 'BinaryData(dataAsBase64: $dataAsBase64, mimeType: $mimeType, source: $source)';
}


}

/// @nodoc
abstract mixin class $BinaryDataCopyWith<$Res>  {
  factory $BinaryDataCopyWith(BinaryData value, $Res Function(BinaryData) _then) = _$BinaryDataCopyWithImpl;
@useResult
$Res call({
 String? dataAsBase64, String mimeType, String? source
});




}
/// @nodoc
class _$BinaryDataCopyWithImpl<$Res>
    implements $BinaryDataCopyWith<$Res> {
  _$BinaryDataCopyWithImpl(this._self, this._then);

  final BinaryData _self;
  final $Res Function(BinaryData) _then;

/// Create a copy of BinaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataAsBase64 = freezed,Object? mimeType = null,Object? source = freezed,}) {
  return _then(_self.copyWith(
dataAsBase64: freezed == dataAsBase64 ? _self.dataAsBase64 : dataAsBase64 // ignore: cast_nullable_to_non_nullable
as String?,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BinaryData implements BinaryData {
   _BinaryData({this.dataAsBase64, required this.mimeType, this.source});
  factory _BinaryData.fromJson(Map<String, dynamic> json) => _$BinaryDataFromJson(json);

@override final  String? dataAsBase64;
@override final  String mimeType;
@override final  String? source;

/// Create a copy of BinaryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BinaryDataCopyWith<_BinaryData> get copyWith => __$BinaryDataCopyWithImpl<_BinaryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BinaryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BinaryData&&(identical(other.dataAsBase64, dataAsBase64) || other.dataAsBase64 == dataAsBase64)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dataAsBase64,mimeType,source);

@override
String toString() {
  return 'BinaryData(dataAsBase64: $dataAsBase64, mimeType: $mimeType, source: $source)';
}


}

/// @nodoc
abstract mixin class _$BinaryDataCopyWith<$Res> implements $BinaryDataCopyWith<$Res> {
  factory _$BinaryDataCopyWith(_BinaryData value, $Res Function(_BinaryData) _then) = __$BinaryDataCopyWithImpl;
@override @useResult
$Res call({
 String? dataAsBase64, String mimeType, String? source
});




}
/// @nodoc
class __$BinaryDataCopyWithImpl<$Res>
    implements _$BinaryDataCopyWith<$Res> {
  __$BinaryDataCopyWithImpl(this._self, this._then);

  final _BinaryData _self;
  final $Res Function(_BinaryData) _then;

/// Create a copy of BinaryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataAsBase64 = freezed,Object? mimeType = null,Object? source = freezed,}) {
  return _then(_BinaryData(
dataAsBase64: freezed == dataAsBase64 ? _self.dataAsBase64 : dataAsBase64 // ignore: cast_nullable_to_non_nullable
as String?,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
