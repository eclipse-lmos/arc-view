// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_cases_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Manages the test cases.
///

@ProviderFor(TestCasesNotifier)
const testCasesProvider = TestCasesNotifierProvider._();

///
/// Manages the test cases.
///
final class TestCasesNotifierProvider
    extends $NotifierProvider<TestCasesNotifier, TestCases> {
  ///
  /// Manages the test cases.
  ///
  const TestCasesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCasesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$testCasesNotifierHash();

  @$internal
  @override
  TestCasesNotifier create() => TestCasesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCases value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TestCases>(value),
    );
  }
}

String _$testCasesNotifierHash() => r'40dcdf571dfcaaf1d0a50b9c0e9df093d2d4294f';

///
/// Manages the test cases.
///

abstract class _$TestCasesNotifier extends $Notifier<TestCases> {
  TestCases build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TestCases, TestCases>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TestCases, TestCases>,
              TestCases,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
