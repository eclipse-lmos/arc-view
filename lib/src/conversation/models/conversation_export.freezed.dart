// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationExport {

 Conversation get conversation; List<AgentEvent> get events;
/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationExportCopyWith<ConversationExport> get copyWith => _$ConversationExportCopyWithImpl<ConversationExport>(this as ConversationExport, _$identity);

  /// Serializes this ConversationExport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationExport&&(identical(other.conversation, conversation) || other.conversation == conversation)&&const DeepCollectionEquality().equals(other.events, events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation,const DeepCollectionEquality().hash(events));

@override
String toString() {
  return 'ConversationExport(conversation: $conversation, events: $events)';
}


}

/// @nodoc
abstract mixin class $ConversationExportCopyWith<$Res>  {
  factory $ConversationExportCopyWith(ConversationExport value, $Res Function(ConversationExport) _then) = _$ConversationExportCopyWithImpl;
@useResult
$Res call({
 Conversation conversation, List<AgentEvent> events
});


$ConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class _$ConversationExportCopyWithImpl<$Res>
    implements $ConversationExportCopyWith<$Res> {
  _$ConversationExportCopyWithImpl(this._self, this._then);

  final ConversationExport _self;
  final $Res Function(ConversationExport) _then;

/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation = null,Object? events = null,}) {
  return _then(_self.copyWith(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<AgentEvent>,
  ));
}
/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get conversation {
  
  return $ConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConversationExport].
extension ConversationExportPatterns on ConversationExport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationExport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationExport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationExport value)  $default,){
final _that = this;
switch (_that) {
case _ConversationExport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationExport value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationExport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Conversation conversation,  List<AgentEvent> events)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationExport() when $default != null:
return $default(_that.conversation,_that.events);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Conversation conversation,  List<AgentEvent> events)  $default,) {final _that = this;
switch (_that) {
case _ConversationExport():
return $default(_that.conversation,_that.events);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Conversation conversation,  List<AgentEvent> events)?  $default,) {final _that = this;
switch (_that) {
case _ConversationExport() when $default != null:
return $default(_that.conversation,_that.events);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationExport implements ConversationExport {
   _ConversationExport({required this.conversation, required final  List<AgentEvent> events}): _events = events;
  factory _ConversationExport.fromJson(Map<String, dynamic> json) => _$ConversationExportFromJson(json);

@override final  Conversation conversation;
 final  List<AgentEvent> _events;
@override List<AgentEvent> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}


/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationExportCopyWith<_ConversationExport> get copyWith => __$ConversationExportCopyWithImpl<_ConversationExport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationExportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationExport&&(identical(other.conversation, conversation) || other.conversation == conversation)&&const DeepCollectionEquality().equals(other._events, _events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation,const DeepCollectionEquality().hash(_events));

@override
String toString() {
  return 'ConversationExport(conversation: $conversation, events: $events)';
}


}

/// @nodoc
abstract mixin class _$ConversationExportCopyWith<$Res> implements $ConversationExportCopyWith<$Res> {
  factory _$ConversationExportCopyWith(_ConversationExport value, $Res Function(_ConversationExport) _then) = __$ConversationExportCopyWithImpl;
@override @useResult
$Res call({
 Conversation conversation, List<AgentEvent> events
});


@override $ConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class __$ConversationExportCopyWithImpl<$Res>
    implements _$ConversationExportCopyWith<$Res> {
  __$ConversationExportCopyWithImpl(this._self, this._then);

  final _ConversationExport _self;
  final $Res Function(_ConversationExport) _then;

/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation = null,Object? events = null,}) {
  return _then(_ConversationExport(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<AgentEvent>,
  ));
}

/// Create a copy of ConversationExport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get conversation {
  
  return $ConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}

// dart format on
