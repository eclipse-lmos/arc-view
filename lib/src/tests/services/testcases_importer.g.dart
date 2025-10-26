// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testcases_importer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(testCasesImporter)
const testCasesImporterProvider = TestCasesImporterProvider._();

final class TestCasesImporterProvider
    extends
        $FunctionalProvider<
          TestCasesImporter,
          TestCasesImporter,
          TestCasesImporter
        >
    with $Provider<TestCasesImporter> {
  const TestCasesImporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCasesImporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$testCasesImporterHash();

  @$internal
  @override
  $ProviderElement<TestCasesImporter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TestCasesImporter create(Ref ref) {
    return testCasesImporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCasesImporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TestCasesImporter>(value),
    );
  }
}

String _$testCasesImporterHash() => r'da6b4d54a6e06ff08f86bc2621a6c45cc26b4f72';
