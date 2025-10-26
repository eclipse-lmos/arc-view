// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_runs_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Manages the test cases.
///

@ProviderFor(TestRunsNotifier)
const testRunsProvider = TestRunsNotifierProvider._();

///
/// Manages the test cases.
///
final class TestRunsNotifierProvider
    extends
        $NotifierProvider<TestRunsNotifier, Map<String, Map<String, TestRun>>> {
  ///
  /// Manages the test cases.
  ///
  const TestRunsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testRunsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$testRunsNotifierHash();

  @$internal
  @override
  TestRunsNotifier create() => TestRunsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, Map<String, TestRun>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, Map<String, TestRun>>>(
        value,
      ),
    );
  }
}

String _$testRunsNotifierHash() => r'6055b7946c595c881a707a551e4ca24ae7a1389e';

///
/// Manages the test cases.
///

abstract class _$TestRunsNotifier
    extends $Notifier<Map<String, Map<String, TestRun>>> {
  Map<String, Map<String, TestRun>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              Map<String, Map<String, TestRun>>,
              Map<String, Map<String, TestRun>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                Map<String, Map<String, TestRun>>,
                Map<String, Map<String, TestRun>>
              >,
              Map<String, Map<String, TestRun>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
