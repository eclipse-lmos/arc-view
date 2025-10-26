// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(useCaseRepository)
const useCaseRepositoryProvider = UseCaseRepositoryProvider._();

final class UseCaseRepositoryProvider
    extends
        $FunctionalProvider<
          UseCaseRepository,
          UseCaseRepository,
          UseCaseRepository
        >
    with $Provider<UseCaseRepository> {
  const UseCaseRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCaseRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCaseRepositoryHash();

  @$internal
  @override
  $ProviderElement<UseCaseRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UseCaseRepository create(Ref ref) {
    return useCaseRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UseCaseRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UseCaseRepository>(value),
    );
  }
}

String _$useCaseRepositoryHash() => r'6979a5eba63be4629880c6a9835b505047ea283f';
