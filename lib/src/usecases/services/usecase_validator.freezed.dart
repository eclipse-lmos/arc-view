// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usecase_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UseCaseValidationResult {

 List<UseCaseValidationError> get errors;
/// Create a copy of UseCaseValidationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseCaseValidationResultCopyWith<UseCaseValidationResult> get copyWith => _$UseCaseValidationResultCopyWithImpl<UseCaseValidationResult>(this as UseCaseValidationResult, _$identity);

  /// Serializes this UseCaseValidationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseCaseValidationResult&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'UseCaseValidationResult(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $UseCaseValidationResultCopyWith<$Res>  {
  factory $UseCaseValidationResultCopyWith(UseCaseValidationResult value, $Res Function(UseCaseValidationResult) _then) = _$UseCaseValidationResultCopyWithImpl;
@useResult
$Res call({
 List<UseCaseValidationError> errors
});




}
/// @nodoc
class _$UseCaseValidationResultCopyWithImpl<$Res>
    implements $UseCaseValidationResultCopyWith<$Res> {
  _$UseCaseValidationResultCopyWithImpl(this._self, this._then);

  final UseCaseValidationResult _self;
  final $Res Function(UseCaseValidationResult) _then;

/// Create a copy of UseCaseValidationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errors = null,}) {
  return _then(_self.copyWith(
errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<UseCaseValidationError>,
  ));
}

}


/// Adds pattern-matching-related methods to [UseCaseValidationResult].
extension UseCaseValidationResultPatterns on UseCaseValidationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseCaseValidationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseCaseValidationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseCaseValidationResult value)  $default,){
final _that = this;
switch (_that) {
case _UseCaseValidationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseCaseValidationResult value)?  $default,){
final _that = this;
switch (_that) {
case _UseCaseValidationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UseCaseValidationError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UseCaseValidationResult() when $default != null:
return $default(_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UseCaseValidationError> errors)  $default,) {final _that = this;
switch (_that) {
case _UseCaseValidationResult():
return $default(_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UseCaseValidationError> errors)?  $default,) {final _that = this;
switch (_that) {
case _UseCaseValidationResult() when $default != null:
return $default(_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseCaseValidationResult extends UseCaseValidationResult {
   _UseCaseValidationResult({required final  List<UseCaseValidationError> errors}): _errors = errors,super._();
  factory _UseCaseValidationResult.fromJson(Map<String, dynamic> json) => _$UseCaseValidationResultFromJson(json);

 final  List<UseCaseValidationError> _errors;
@override List<UseCaseValidationError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of UseCaseValidationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseCaseValidationResultCopyWith<_UseCaseValidationResult> get copyWith => __$UseCaseValidationResultCopyWithImpl<_UseCaseValidationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseCaseValidationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseCaseValidationResult&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'UseCaseValidationResult(errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$UseCaseValidationResultCopyWith<$Res> implements $UseCaseValidationResultCopyWith<$Res> {
  factory _$UseCaseValidationResultCopyWith(_UseCaseValidationResult value, $Res Function(_UseCaseValidationResult) _then) = __$UseCaseValidationResultCopyWithImpl;
@override @useResult
$Res call({
 List<UseCaseValidationError> errors
});




}
/// @nodoc
class __$UseCaseValidationResultCopyWithImpl<$Res>
    implements _$UseCaseValidationResultCopyWith<$Res> {
  __$UseCaseValidationResultCopyWithImpl(this._self, this._then);

  final _UseCaseValidationResult _self;
  final $Res Function(_UseCaseValidationResult) _then;

/// Create a copy of UseCaseValidationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(_UseCaseValidationResult(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<UseCaseValidationError>,
  ));
}


}


/// @nodoc
mixin _$UseCaseValidationError {

 String get code; String get message;
/// Create a copy of UseCaseValidationError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UseCaseValidationErrorCopyWith<UseCaseValidationError> get copyWith => _$UseCaseValidationErrorCopyWithImpl<UseCaseValidationError>(this as UseCaseValidationError, _$identity);

  /// Serializes this UseCaseValidationError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UseCaseValidationError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'UseCaseValidationError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $UseCaseValidationErrorCopyWith<$Res>  {
  factory $UseCaseValidationErrorCopyWith(UseCaseValidationError value, $Res Function(UseCaseValidationError) _then) = _$UseCaseValidationErrorCopyWithImpl;
@useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$UseCaseValidationErrorCopyWithImpl<$Res>
    implements $UseCaseValidationErrorCopyWith<$Res> {
  _$UseCaseValidationErrorCopyWithImpl(this._self, this._then);

  final UseCaseValidationError _self;
  final $Res Function(UseCaseValidationError) _then;

/// Create a copy of UseCaseValidationError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UseCaseValidationError].
extension UseCaseValidationErrorPatterns on UseCaseValidationError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UseCaseValidationError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UseCaseValidationError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UseCaseValidationError value)  $default,){
final _that = this;
switch (_that) {
case _UseCaseValidationError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UseCaseValidationError value)?  $default,){
final _that = this;
switch (_that) {
case _UseCaseValidationError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UseCaseValidationError() when $default != null:
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message)  $default,) {final _that = this;
switch (_that) {
case _UseCaseValidationError():
return $default(_that.code,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _UseCaseValidationError() when $default != null:
return $default(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UseCaseValidationError extends UseCaseValidationError {
   _UseCaseValidationError({required this.code, required this.message}): super._();
  factory _UseCaseValidationError.fromJson(Map<String, dynamic> json) => _$UseCaseValidationErrorFromJson(json);

@override final  String code;
@override final  String message;

/// Create a copy of UseCaseValidationError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseCaseValidationErrorCopyWith<_UseCaseValidationError> get copyWith => __$UseCaseValidationErrorCopyWithImpl<_UseCaseValidationError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UseCaseValidationErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseCaseValidationError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'UseCaseValidationError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UseCaseValidationErrorCopyWith<$Res> implements $UseCaseValidationErrorCopyWith<$Res> {
  factory _$UseCaseValidationErrorCopyWith(_UseCaseValidationError value, $Res Function(_UseCaseValidationError) _then) = __$UseCaseValidationErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class __$UseCaseValidationErrorCopyWithImpl<$Res>
    implements _$UseCaseValidationErrorCopyWith<$Res> {
  __$UseCaseValidationErrorCopyWithImpl(this._self, this._then);

  final _UseCaseValidationError _self;
  final $Res Function(_UseCaseValidationError) _then;

/// Create a copy of UseCaseValidationError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(_UseCaseValidationError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
