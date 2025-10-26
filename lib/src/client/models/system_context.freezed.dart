// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [SystemContext].
extension SystemContextPatterns on SystemContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SystemContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SystemContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SystemContext value)  $default,){
final _that = this;
switch (_that) {
case _SystemContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SystemContext value)?  $default,){
final _that = this;
switch (_that) {
case _SystemContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SystemContextEntry> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SystemContext() when $default != null:
return $default(_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SystemContextEntry> entries)  $default,) {final _that = this;
switch (_that) {
case _SystemContext():
return $default(_that.entries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SystemContextEntry> entries)?  $default,) {final _that = this;
switch (_that) {
case _SystemContext() when $default != null:
return $default(_that.entries);case _:
  return null;

}
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
