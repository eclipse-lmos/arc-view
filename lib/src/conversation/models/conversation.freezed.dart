// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [Conversation].
extension ConversationPatterns on Conversation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Conversation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Conversation value)  $default,){
final _that = this;
switch (_that) {
case _Conversation():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Conversation value)?  $default,){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ConversationMessage> messages,  UserContext userContext,  SystemContext systemContext,  String conversationId,  DateTime createdAt,  String? name,  bool? loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.messages,_that.userContext,_that.systemContext,_that.conversationId,_that.createdAt,_that.name,_that.loading);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ConversationMessage> messages,  UserContext userContext,  SystemContext systemContext,  String conversationId,  DateTime createdAt,  String? name,  bool? loading)  $default,) {final _that = this;
switch (_that) {
case _Conversation():
return $default(_that.messages,_that.userContext,_that.systemContext,_that.conversationId,_that.createdAt,_that.name,_that.loading);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ConversationMessage> messages,  UserContext userContext,  SystemContext systemContext,  String conversationId,  DateTime createdAt,  String? name,  bool? loading)?  $default,) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.messages,_that.userContext,_that.systemContext,_that.conversationId,_that.createdAt,_that.name,_that.loading);case _:
  return null;

}
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
