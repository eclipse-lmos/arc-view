// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_run.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestRun {

 TestCase get testCase; bool? get success; Conversation get conversation; DateTime get startedAt;
/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestRunCopyWith<TestRun> get copyWith => _$TestRunCopyWithImpl<TestRun>(this as TestRun, _$identity);

  /// Serializes this TestRun to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestRun&&(identical(other.testCase, testCase) || other.testCase == testCase)&&(identical(other.success, success) || other.success == success)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testCase,success,conversation,startedAt);

@override
String toString() {
  return 'TestRun(testCase: $testCase, success: $success, conversation: $conversation, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class $TestRunCopyWith<$Res>  {
  factory $TestRunCopyWith(TestRun value, $Res Function(TestRun) _then) = _$TestRunCopyWithImpl;
@useResult
$Res call({
 TestCase testCase, bool? success, Conversation conversation, DateTime startedAt
});


$TestCaseCopyWith<$Res> get testCase;$ConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class _$TestRunCopyWithImpl<$Res>
    implements $TestRunCopyWith<$Res> {
  _$TestRunCopyWithImpl(this._self, this._then);

  final TestRun _self;
  final $Res Function(TestRun) _then;

/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testCase = null,Object? success = freezed,Object? conversation = null,Object? startedAt = null,}) {
  return _then(_self.copyWith(
testCase: null == testCase ? _self.testCase : testCase // ignore: cast_nullable_to_non_nullable
as TestCase,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestCaseCopyWith<$Res> get testCase {
  
  return $TestCaseCopyWith<$Res>(_self.testCase, (value) {
    return _then(_self.copyWith(testCase: value));
  });
}/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationCopyWith<$Res> get conversation {
  
  return $ConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TestRun extends TestRun {
   _TestRun({required this.testCase, this.success, required this.conversation, required this.startedAt}): super._();
  factory _TestRun.fromJson(Map<String, dynamic> json) => _$TestRunFromJson(json);

@override final  TestCase testCase;
@override final  bool? success;
@override final  Conversation conversation;
@override final  DateTime startedAt;

/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestRunCopyWith<_TestRun> get copyWith => __$TestRunCopyWithImpl<_TestRun>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestRunToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestRun&&(identical(other.testCase, testCase) || other.testCase == testCase)&&(identical(other.success, success) || other.success == success)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,testCase,success,conversation,startedAt);

@override
String toString() {
  return 'TestRun(testCase: $testCase, success: $success, conversation: $conversation, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class _$TestRunCopyWith<$Res> implements $TestRunCopyWith<$Res> {
  factory _$TestRunCopyWith(_TestRun value, $Res Function(_TestRun) _then) = __$TestRunCopyWithImpl;
@override @useResult
$Res call({
 TestCase testCase, bool? success, Conversation conversation, DateTime startedAt
});


@override $TestCaseCopyWith<$Res> get testCase;@override $ConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class __$TestRunCopyWithImpl<$Res>
    implements _$TestRunCopyWith<$Res> {
  __$TestRunCopyWithImpl(this._self, this._then);

  final _TestRun _self;
  final $Res Function(_TestRun) _then;

/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testCase = null,Object? success = freezed,Object? conversation = null,Object? startedAt = null,}) {
  return _then(_TestRun(
testCase: null == testCase ? _self.testCase : testCase // ignore: cast_nullable_to_non_nullable
as TestCase,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as Conversation,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of TestRun
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TestCaseCopyWith<$Res> get testCase {
  
  return $TestCaseCopyWith<$Res>(_self.testCase, (value) {
    return _then(_self.copyWith(testCase: value));
  });
}/// Create a copy of TestRun
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
