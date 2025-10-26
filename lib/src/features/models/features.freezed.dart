// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Features {

 List<Feature> get seatures;
/// Create a copy of Features
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeaturesCopyWith<Features> get copyWith => _$FeaturesCopyWithImpl<Features>(this as Features, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Features&&const DeepCollectionEquality().equals(other.seatures, seatures));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(seatures));

@override
String toString() {
  return 'Features(seatures: $seatures)';
}


}

/// @nodoc
abstract mixin class $FeaturesCopyWith<$Res>  {
  factory $FeaturesCopyWith(Features value, $Res Function(Features) _then) = _$FeaturesCopyWithImpl;
@useResult
$Res call({
 List<Feature> seatures
});




}
/// @nodoc
class _$FeaturesCopyWithImpl<$Res>
    implements $FeaturesCopyWith<$Res> {
  _$FeaturesCopyWithImpl(this._self, this._then);

  final Features _self;
  final $Res Function(Features) _then;

/// Create a copy of Features
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seatures = null,}) {
  return _then(_self.copyWith(
seatures: null == seatures ? _self.seatures : seatures // ignore: cast_nullable_to_non_nullable
as List<Feature>,
  ));
}

}


/// Adds pattern-matching-related methods to [Features].
extension FeaturesPatterns on Features {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Features value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Features() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Features value)  $default,){
final _that = this;
switch (_that) {
case _Features():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Features value)?  $default,){
final _that = this;
switch (_that) {
case _Features() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Feature> seatures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Features() when $default != null:
return $default(_that.seatures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Feature> seatures)  $default,) {final _that = this;
switch (_that) {
case _Features():
return $default(_that.seatures);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Feature> seatures)?  $default,) {final _that = this;
switch (_that) {
case _Features() when $default != null:
return $default(_that.seatures);case _:
  return null;

}
}

}

/// @nodoc


class _Features extends Features {
   _Features({required final  List<Feature> seatures}): _seatures = seatures,super._();
  

 final  List<Feature> _seatures;
@override List<Feature> get seatures {
  if (_seatures is EqualUnmodifiableListView) return _seatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatures);
}


/// Create a copy of Features
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeaturesCopyWith<_Features> get copyWith => __$FeaturesCopyWithImpl<_Features>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Features&&const DeepCollectionEquality().equals(other._seatures, _seatures));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_seatures));

@override
String toString() {
  return 'Features(seatures: $seatures)';
}


}

/// @nodoc
abstract mixin class _$FeaturesCopyWith<$Res> implements $FeaturesCopyWith<$Res> {
  factory _$FeaturesCopyWith(_Features value, $Res Function(_Features) _then) = __$FeaturesCopyWithImpl;
@override @useResult
$Res call({
 List<Feature> seatures
});




}
/// @nodoc
class __$FeaturesCopyWithImpl<$Res>
    implements _$FeaturesCopyWith<$Res> {
  __$FeaturesCopyWithImpl(this._self, this._then);

  final _Features _self;
  final $Res Function(_Features) _then;

/// Create a copy of Features
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seatures = null,}) {
  return _then(_Features(
seatures: null == seatures ? _self._seatures : seatures // ignore: cast_nullable_to_non_nullable
as List<Feature>,
  ));
}


}

// dart format on
