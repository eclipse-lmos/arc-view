// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'envs_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(envsRepository)
const envsRepositoryProvider = EnvsRepositoryProvider._();

final class EnvsRepositoryProvider
    extends $FunctionalProvider<EnvsRepository, EnvsRepository, EnvsRepository>
    with $Provider<EnvsRepository> {
  const EnvsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'envsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$envsRepositoryHash();

  @$internal
  @override
  $ProviderElement<EnvsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EnvsRepository create(Ref ref) {
    return envsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnvsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnvsRepository>(value),
    );
  }
}

String _$envsRepositoryHash() => r'3f6a551ff8c0213c608eb1e7c2eb950af078e09f';
