// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Conversations {

 List<Conversation> get conversations; Conversation get current;
/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsCopyWith<Conversations> get copyWith => _$ConversationsCopyWithImpl<Conversations>(this as Conversations, _$identity);





@override
String toString() {
  return 'Conversations(conversations: $conversations, current: $current)';
}


}

/// @nodoc
abstract mixin class $ConversationsCopyWith<$Res>  {
  factory $ConversationsCopyWith(Conversations value, $Res Function(Conversations) _then) = _$ConversationsCopyWithImpl;
@useResult
$Res call({
 List<Conversation> conversations, Conversation current
});


$ConversationCopyWith<$Res> get current;

}
/// @nodoc
class _$ConversationsCopyWithImpl<$Res>
    implements $ConversationsCopyWith<$Res> {
  _$ConversationsCopyWithImpl(this._self, this._then);

  final Conversations _self;
  final $Res Function(Conversations) _then;

/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversations = null,Object? current = null,}) {
  return _then(_self.copyWith(
conversations: null == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<Conversation>,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Conversation,
  ));
}
/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get current {
  
  return $ConversationCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc


class _Conversations extends Conversations {
   _Conversations({required final  List<Conversation> conversations, required this.current}): _conversations = conversations,super._();
  

 final  List<Conversation> _conversations;
@override List<Conversation> get conversations {
  if (_conversations is EqualUnmodifiableListView) return _conversations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversations);
}

@override final  Conversation current;

/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationsCopyWith<_Conversations> get copyWith => __$ConversationsCopyWithImpl<_Conversations>(this, _$identity);





@override
String toString() {
  return 'Conversations(conversations: $conversations, current: $current)';
}


}

/// @nodoc
abstract mixin class _$ConversationsCopyWith<$Res> implements $ConversationsCopyWith<$Res> {
  factory _$ConversationsCopyWith(_Conversations value, $Res Function(_Conversations) _then) = __$ConversationsCopyWithImpl;
@override @useResult
$Res call({
 List<Conversation> conversations, Conversation current
});


@override $ConversationCopyWith<$Res> get current;

}
/// @nodoc
class __$ConversationsCopyWithImpl<$Res>
    implements _$ConversationsCopyWith<$Res> {
  __$ConversationsCopyWithImpl(this._self, this._then);

  final _Conversations _self;
  final $Res Function(_Conversations) _then;

/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversations = null,Object? current = null,}) {
  return _then(_Conversations(
conversations: null == conversations ? _self._conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<Conversation>,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Conversation,
  ));
}

/// Create a copy of Conversations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get current {
  
  return $ConversationCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

// dart format on
