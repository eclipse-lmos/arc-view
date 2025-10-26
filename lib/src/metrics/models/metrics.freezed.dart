// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Metrics {

 int get color; String get name; String? get conversationId; Map<PlotType, List<Plot>> get plots;
/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricsCopyWith<Metrics> get copyWith => _$MetricsCopyWithImpl<Metrics>(this as Metrics, _$identity);

  /// Serializes this Metrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metrics&&(identical(other.color, color) || other.color == color)&&(identical(other.name, name) || other.name == name)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other.plots, plots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,name,conversationId,const DeepCollectionEquality().hash(plots));

@override
String toString() {
  return 'Metrics(color: $color, name: $name, conversationId: $conversationId, plots: $plots)';
}


}

/// @nodoc
abstract mixin class $MetricsCopyWith<$Res>  {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) _then) = _$MetricsCopyWithImpl;
@useResult
$Res call({
 int color, String name, String? conversationId, Map<PlotType, List<Plot>> plots
});




}
/// @nodoc
class _$MetricsCopyWithImpl<$Res>
    implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._self, this._then);

  final Metrics _self;
  final $Res Function(Metrics) _then;

/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,Object? name = null,Object? conversationId = freezed,Object? plots = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,plots: null == plots ? _self.plots : plots // ignore: cast_nullable_to_non_nullable
as Map<PlotType, List<Plot>>,
  ));
}

}


/// Adds pattern-matching-related methods to [Metrics].
extension MetricsPatterns on Metrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Metrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Metrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Metrics value)  $default,){
final _that = this;
switch (_that) {
case _Metrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Metrics value)?  $default,){
final _that = this;
switch (_that) {
case _Metrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int color,  String name,  String? conversationId,  Map<PlotType, List<Plot>> plots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Metrics() when $default != null:
return $default(_that.color,_that.name,_that.conversationId,_that.plots);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int color,  String name,  String? conversationId,  Map<PlotType, List<Plot>> plots)  $default,) {final _that = this;
switch (_that) {
case _Metrics():
return $default(_that.color,_that.name,_that.conversationId,_that.plots);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int color,  String name,  String? conversationId,  Map<PlotType, List<Plot>> plots)?  $default,) {final _that = this;
switch (_that) {
case _Metrics() when $default != null:
return $default(_that.color,_that.name,_that.conversationId,_that.plots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Metrics implements Metrics {
   _Metrics({required this.color, required this.name, this.conversationId, required final  Map<PlotType, List<Plot>> plots}): _plots = plots;
  factory _Metrics.fromJson(Map<String, dynamic> json) => _$MetricsFromJson(json);

@override final  int color;
@override final  String name;
@override final  String? conversationId;
 final  Map<PlotType, List<Plot>> _plots;
@override Map<PlotType, List<Plot>> get plots {
  if (_plots is EqualUnmodifiableMapView) return _plots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_plots);
}


/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricsCopyWith<_Metrics> get copyWith => __$MetricsCopyWithImpl<_Metrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metrics&&(identical(other.color, color) || other.color == color)&&(identical(other.name, name) || other.name == name)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&const DeepCollectionEquality().equals(other._plots, _plots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,name,conversationId,const DeepCollectionEquality().hash(_plots));

@override
String toString() {
  return 'Metrics(color: $color, name: $name, conversationId: $conversationId, plots: $plots)';
}


}

/// @nodoc
abstract mixin class _$MetricsCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$MetricsCopyWith(_Metrics value, $Res Function(_Metrics) _then) = __$MetricsCopyWithImpl;
@override @useResult
$Res call({
 int color, String name, String? conversationId, Map<PlotType, List<Plot>> plots
});




}
/// @nodoc
class __$MetricsCopyWithImpl<$Res>
    implements _$MetricsCopyWith<$Res> {
  __$MetricsCopyWithImpl(this._self, this._then);

  final _Metrics _self;
  final $Res Function(_Metrics) _then;

/// Create a copy of Metrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,Object? name = null,Object? conversationId = freezed,Object? plots = null,}) {
  return _then(_Metrics(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,plots: null == plots ? _self._plots : plots // ignore: cast_nullable_to_non_nullable
as Map<PlotType, List<Plot>>,
  ));
}


}


/// @nodoc
mixin _$Plot {

 double get x; double get y;
/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlotCopyWith<Plot> get copyWith => _$PlotCopyWithImpl<Plot>(this as Plot, _$identity);

  /// Serializes this Plot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Plot&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Plot(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $PlotCopyWith<$Res>  {
  factory $PlotCopyWith(Plot value, $Res Function(Plot) _then) = _$PlotCopyWithImpl;
@useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class _$PlotCopyWithImpl<$Res>
    implements $PlotCopyWith<$Res> {
  _$PlotCopyWithImpl(this._self, this._then);

  final Plot _self;
  final $Res Function(Plot) _then;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Plot].
extension PlotPatterns on Plot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Plot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Plot value)  $default,){
final _that = this;
switch (_that) {
case _Plot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Plot value)?  $default,){
final _that = this;
switch (_that) {
case _Plot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plot() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y)  $default,) {final _that = this;
switch (_that) {
case _Plot():
return $default(_that.x,_that.y);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _Plot() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Plot implements Plot {
   _Plot({required this.x, required this.y});
  factory _Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);

@override final  double x;
@override final  double y;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlotCopyWith<_Plot> get copyWith => __$PlotCopyWithImpl<_Plot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plot&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Plot(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$PlotCopyWith<$Res> implements $PlotCopyWith<$Res> {
  factory _$PlotCopyWith(_Plot value, $Res Function(_Plot) _then) = __$PlotCopyWithImpl;
@override @useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class __$PlotCopyWithImpl<$Res>
    implements _$PlotCopyWith<$Res> {
  __$PlotCopyWithImpl(this._self, this._then);

  final _Plot _self;
  final $Res Function(_Plot) _then;

/// Create a copy of Plot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_Plot(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
