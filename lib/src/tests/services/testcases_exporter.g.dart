// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testcases_exporter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(testCasesExporter)
const testCasesExporterProvider = TestCasesExporterProvider._();

final class TestCasesExporterProvider
    extends
        $FunctionalProvider<
          TestCasesExporter,
          TestCasesExporter,
          TestCasesExporter
        >
    with $Provider<TestCasesExporter> {
  const TestCasesExporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCasesExporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$testCasesExporterHash();

  @$internal
  @override
  $ProviderElement<TestCasesExporter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TestCasesExporter create(Ref ref) {
    return testCasesExporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCasesExporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TestCasesExporter>(value),
    );
  }
}

String _$testCasesExporterHash() => r'ca0f22feeb7bf5069a5ea2827badd9a36b1caaad';
