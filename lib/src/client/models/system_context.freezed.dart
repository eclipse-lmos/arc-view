// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SystemContext {

 List<SystemContextEntry> get entries;
/// Create a copy of SystemContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemContextCopyWith<SystemContext> get copyWith => _$SystemContextCopyWithImpl<SystemContext>(this as SystemContext, _$identity);

  /// Serializes this SystemContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemContext&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'SystemContext(entries: $entries)';
}


}

/// @nodoc
abstract mixin class $SystemContextCopyWith<$Res>  {
  factory $SystemContextCopyWith(SystemContext value, $Res Function(SystemContext) _then) = _$SystemContextCopyWithImpl;
@useResult
$Res call({
 List<SystemContextEntry> entries
});




}
/// @nodoc
class _$SystemContextCopyWithImpl<$Res>
    implements $SystemContextCopyWith<$Res> {
  _$SystemContextCopyWithImpl(this._self, this._then);

  final SystemContext _self;
  final $Res Function(SystemContext) _then;

/// Create a copy of SystemContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,}) {
  return _then(_self.copyWith(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<SystemContextEntry>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SystemContext implements SystemContext {
   _SystemContext({required final  List<SystemContextEntry> entries}): _entries = entries;
  factory _SystemContext.fromJson(Map<String, dynamic> json) => _$SystemContextFromJson(json);

 final  List<SystemContextEntry> _entries;
@override List<SystemContextEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of SystemContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SystemContextCopyWith<_SystemContext> get copyWith => __$SystemContextCopyWithImpl<_SystemContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SystemContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SystemContext&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'SystemContext(entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$SystemContextCopyWith<$Res> implements $SystemContextCopyWith<$Res> {
  factory _$SystemContextCopyWith(_SystemContext value, $Res Function(_SystemContext) _then) = __$SystemContextCopyWithImpl;
@override @useResult
$Res call({
 List<SystemContextEntry> entries
});




}
/// @nodoc
class __$SystemContextCopyWithImpl<$Res>
    implements _$SystemContextCopyWith<$Res> {
  __$SystemContextCopyWithImpl(this._self, this._then);

  final _SystemContext _self;
  final $Res Function(_SystemContext) _then;

/// Create a copy of SystemContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(_SystemContext(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<SystemContextEntry>,
  ));
}


}

// dart format on
