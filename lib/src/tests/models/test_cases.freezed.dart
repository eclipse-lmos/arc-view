// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_cases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestCases {

 List<TestCase> get testCases;
/// Create a copy of TestCases
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestCasesCopyWith<TestCases> get copyWith => _$TestCasesCopyWithImpl<TestCases>(this as TestCases, _$identity);

  /// Serializes this TestCases to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestCases&&const DeepCollectionEquality().equals(other.testCases, testCases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(testCases));

@override
String toString() {
  return 'TestCases(testCases: $testCases)';
}


}

/// @nodoc
abstract mixin class $TestCasesCopyWith<$Res>  {
  factory $TestCasesCopyWith(TestCases value, $Res Function(TestCases) _then) = _$TestCasesCopyWithImpl;
@useResult
$Res call({
 List<TestCase> testCases
});




}
/// @nodoc
class _$TestCasesCopyWithImpl<$Res>
    implements $TestCasesCopyWith<$Res> {
  _$TestCasesCopyWithImpl(this._self, this._then);

  final TestCases _self;
  final $Res Function(TestCases) _then;

/// Create a copy of TestCases
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testCases = null,}) {
  return _then(_self.copyWith(
testCases: null == testCases ? _self.testCases : testCases // ignore: cast_nullable_to_non_nullable
as List<TestCase>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TestCases extends TestCases {
   _TestCases({required final  List<TestCase> testCases}): _testCases = testCases,super._();
  factory _TestCases.fromJson(Map<String, dynamic> json) => _$TestCasesFromJson(json);

 final  List<TestCase> _testCases;
@override List<TestCase> get testCases {
  if (_testCases is EqualUnmodifiableListView) return _testCases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_testCases);
}


/// Create a copy of TestCases
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestCasesCopyWith<_TestCases> get copyWith => __$TestCasesCopyWithImpl<_TestCases>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestCasesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestCases&&const DeepCollectionEquality().equals(other._testCases, _testCases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_testCases));

@override
String toString() {
  return 'TestCases(testCases: $testCases)';
}


}

/// @nodoc
abstract mixin class _$TestCasesCopyWith<$Res> implements $TestCasesCopyWith<$Res> {
  factory _$TestCasesCopyWith(_TestCases value, $Res Function(_TestCases) _then) = __$TestCasesCopyWithImpl;
@override @useResult
$Res call({
 List<TestCase> testCases
});




}
/// @nodoc
class __$TestCasesCopyWithImpl<$Res>
    implements _$TestCasesCopyWith<$Res> {
  __$TestCasesCopyWithImpl(this._self, this._then);

  final _TestCases _self;
  final $Res Function(_TestCases) _then;

/// Create a copy of TestCases
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testCases = null,}) {
  return _then(_TestCases(
testCases: null == testCases ? _self._testCases : testCases // ignore: cast_nullable_to_non_nullable
as List<TestCase>,
  ));
}


}

// dart format on
