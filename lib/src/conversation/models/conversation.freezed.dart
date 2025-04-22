// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Conversation {

 List<ConversationMessage> get messages; UserContext get userContext; SystemContext get systemContext; String get conversationId; DateTime get createdAt; String? get name; bool? get loading;
/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationCopyWith<Conversation> get copyWith => _$ConversationCopyWithImpl<Conversation>(this as Conversation, _$identity);

  /// Serializes this Conversation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conversation&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.userContext, userContext) || other.userContext == userContext)&&(identical(other.systemContext, systemContext) || other.systemContext == systemContext)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.loading, loading) || other.loading == loading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),userContext,systemContext,conversationId,createdAt,name,loading);

@override
String toString() {
  return 'Conversation(messages: $messages, userContext: $userContext, systemContext: $systemContext, conversationId: $conversationId, createdAt: $createdAt, name: $name, loading: $loading)';
}


}

/// @nodoc
abstract mixin class $ConversationCopyWith<$Res>  {
  factory $ConversationCopyWith(Conversation value, $Res Function(Conversation) _then) = _$ConversationCopyWithImpl;
@useResult
$Res call({
 List<ConversationMessage> messages, UserContext userContext, SystemContext systemContext, String conversationId, DateTime createdAt, String? name, bool? loading
});


$UserContextCopyWith<$Res> get userContext;$SystemContextCopyWith<$Res> get systemContext;

}
/// @nodoc
class _$ConversationCopyWithImpl<$Res>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._self, this._then);

  final Conversation _self;
  final $Res Function(Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? userContext = null,Object? systemContext = null,Object? conversationId = null,Object? createdAt = null,Object? name = freezed,Object? loading = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ConversationMessage>,userContext: null == userContext ? _self.userContext : userContext // ignore: cast_nullable_to_non_nullable
as UserContext,systemContext: null == systemContext ? _self.systemContext : systemContext // ignore: cast_nullable_to_non_nullable
as SystemContext,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,loading: freezed == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserContextCopyWith<$Res> get userContext {
  
  return $UserContextCopyWith<$Res>(_self.userContext, (value) {
    return _then(_self.copyWith(userContext: value));
  });
}/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemContextCopyWith<$Res> get systemContext {
  
  return $SystemContextCopyWith<$Res>(_self.systemContext, (value) {
    return _then(_self.copyWith(systemContext: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Conversation extends Conversation {
   _Conversation({required final  List<ConversationMessage> messages, required this.userContext, required this.systemContext, required this.conversationId, required this.createdAt, this.name, this.loading}): _messages = messages,super._();
  factory _Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

 final  List<ConversationMessage> _messages;
@override List<ConversationMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  UserContext userContext;
@override final  SystemContext systemContext;
@override final  String conversationId;
@override final  DateTime createdAt;
@override final  String? name;
@override final  bool? loading;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationCopyWith<_Conversation> get copyWith => __$ConversationCopyWithImpl<_Conversation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Conversation&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.userContext, userContext) || other.userContext == userContext)&&(identical(other.systemContext, systemContext) || other.systemContext == systemContext)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.loading, loading) || other.loading == loading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),userContext,systemContext,conversationId,createdAt,name,loading);

@override
String toString() {
  return 'Conversation(messages: $messages, userContext: $userContext, systemContext: $systemContext, conversationId: $conversationId, createdAt: $createdAt, name: $name, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$ConversationCopyWith<$Res> implements $ConversationCopyWith<$Res> {
  factory _$ConversationCopyWith(_Conversation value, $Res Function(_Conversation) _then) = __$ConversationCopyWithImpl;
@override @useResult
$Res call({
 List<ConversationMessage> messages, UserContext userContext, SystemContext systemContext, String conversationId, DateTime createdAt, String? name, bool? loading
});


@override $UserContextCopyWith<$Res> get userContext;@override $SystemContextCopyWith<$Res> get systemContext;

}
/// @nodoc
class __$ConversationCopyWithImpl<$Res>
    implements _$ConversationCopyWith<$Res> {
  __$ConversationCopyWithImpl(this._self, this._then);

  final _Conversation _self;
  final $Res Function(_Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? userContext = null,Object? systemContext = null,Object? conversationId = null,Object? createdAt = null,Object? name = freezed,Object? loading = freezed,}) {
  return _then(_Conversation(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ConversationMessage>,userContext: null == userContext ? _self.userContext : userContext // ignore: cast_nullable_to_non_nullable
as UserContext,systemContext: null == systemContext ? _self.systemContext : systemContext // ignore: cast_nullable_to_non_nullable
as SystemContext,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,loading: freezed == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserContextCopyWith<$Res> get userContext {
  
  return $UserContextCopyWith<$Res>(_self.userContext, (value) {
    return _then(_self.copyWith(userContext: value));
  });
}/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SystemContextCopyWith<$Res> get systemContext {
  
  return $SystemContextCopyWith<$Res>(_self.systemContext, (value) {
    return _then(_self.copyWith(systemContext: value));
  });
}
}

// dart format on
