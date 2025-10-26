// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_case_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UseCaseGroup {

 String get id; String get name; bool get primary; String get description; int get color;
/// Create a copy of UseCaseGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseCaseGroupCopyWith<UseCaseGroup> get copyWith => _$UseCaseGroupCopyWithImpl<UseCaseGroup>(this as UseCaseGroup, _$identity);

  /// Serializes this UseCaseGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseCaseGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,primary,description,color);

@override
String toString() {
  return 'UseCaseGroup(id: $id, name: $name, primary: $primary, description: $description, color: $color)';
}


}

/// @nodoc
abstract mixin class $UseCaseGroupCopyWith<$Res>  {
  factory $UseCaseGroupCopyWith(UseCaseGroup value, $Res Function(UseCaseGroup) _then) = _$UseCaseGroupCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool primary, String description, int color
});




}
/// @nodoc
class _$UseCaseGroupCopyWithImpl<$Res>
    implements $UseCaseGroupCopyWith<$Res> {
  _$UseCaseGroupCopyWithImpl(this._self, this._then);

  final UseCaseGroup _self;
  final $Res Function(UseCaseGroup) _then;

/// Create a copy of UseCaseGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? primary = null,Object? description = null,Object? color = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UseCaseGroup].
extension UseCaseGroupPatterns on UseCaseGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseCaseGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseCaseGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseCaseGroup value)  $default,){
final _that = this;
switch (_that) {
case _UseCaseGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseCaseGroup value)?  $default,){
final _that = this;
switch (_that) {
case _UseCaseGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool primary,  String description,  int color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UseCaseGroup() when $default != null:
return $default(_that.id,_that.name,_that.primary,_that.description,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool primary,  String description,  int color)  $default,) {final _that = this;
switch (_that) {
case _UseCaseGroup():
return $default(_that.id,_that.name,_that.primary,_that.description,_that.color);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool primary,  String description,  int color)?  $default,) {final _that = this;
switch (_that) {
case _UseCaseGroup() when $default != null:
return $default(_that.id,_that.name,_that.primary,_that.description,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseCaseGroup extends UseCaseGroup {
   _UseCaseGroup({required this.id, required this.name, required this.primary, required this.description, required this.color}): super._();
  factory _UseCaseGroup.fromJson(Map<String, dynamic> json) => _$UseCaseGroupFromJson(json);

@override final  String id;
@override final  String name;
@override final  bool primary;
@override final  String description;
@override final  int color;

/// Create a copy of UseCaseGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseCaseGroupCopyWith<_UseCaseGroup> get copyWith => __$UseCaseGroupCopyWithImpl<_UseCaseGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseCaseGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseCaseGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.description, description) || other.description == description)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,primary,description,color);

@override
String toString() {
  return 'UseCaseGroup(id: $id, name: $name, primary: $primary, description: $description, color: $color)';
}


}

/// @nodoc
abstract mixin class _$UseCaseGroupCopyWith<$Res> implements $UseCaseGroupCopyWith<$Res> {
  factory _$UseCaseGroupCopyWith(_UseCaseGroup value, $Res Function(_UseCaseGroup) _then) = __$UseCaseGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool primary, String description, int color
});




}
/// @nodoc
class __$UseCaseGroupCopyWithImpl<$Res>
    implements _$UseCaseGroupCopyWith<$Res> {
  __$UseCaseGroupCopyWithImpl(this._self, this._then);

  final _UseCaseGroup _self;
  final $Res Function(_UseCaseGroup) _then;

/// Create a copy of UseCaseGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? primary = null,Object? description = null,Object? color = null,}) {
  return _then(_UseCaseGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
