// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_runs_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testRunsNotifierHash() => r'4b7fcc8f904e74f4a1282da89b10d74413e544d6';

///
/// Manages the test cases.
///
///
/// Copied from [TestRunsNotifier].
@ProviderFor(TestRunsNotifier)
final testRunsNotifierProvider = NotifierProvider<
  TestRunsNotifier,
  Map<String, Map<String, TestRun>>
>.internal(
  TestRunsNotifier.new,
  name: r'testRunsNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$testRunsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TestRunsNotifier = Notifier<Map<String, Map<String, TestRun>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
