// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testcases_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(testCasesRepository)
const testCasesRepositoryProvider = TestCasesRepositoryProvider._();

final class TestCasesRepositoryProvider
    extends
        $FunctionalProvider<
          TestCasesRepository,
          TestCasesRepository,
          TestCasesRepository
        >
    with $Provider<TestCasesRepository> {
  const TestCasesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'testCasesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$testCasesRepositoryHash();

  @$internal
  @override
  $ProviderElement<TestCasesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TestCasesRepository create(Ref ref) {
    return testCasesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TestCasesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TestCasesRepository>(value),
    );
  }
}

String _$testCasesRepositoryHash() =>
    r'f43850c8bd4fa4ae04c6ebadce30d95f4e930f8c';
