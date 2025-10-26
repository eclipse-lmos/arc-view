// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_importer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Imports a use case file.
///

@ProviderFor(useCaseImporter)
const useCaseImporterProvider = UseCaseImporterProvider._();

///
/// Imports a use case file.
///

final class UseCaseImporterProvider
    extends
        $FunctionalProvider<UseCaseImporter, UseCaseImporter, UseCaseImporter>
    with $Provider<UseCaseImporter> {
  ///
  /// Imports a use case file.
  ///
  const UseCaseImporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCaseImporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCaseImporterHash();

  @$internal
  @override
  $ProviderElement<UseCaseImporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UseCaseImporter create(Ref ref) {
    return useCaseImporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UseCaseImporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UseCaseImporter>(value),
    );
  }
}

String _$useCaseImporterHash() => r'88af9c1889b495c4b0ede62913af48e63a8d51c8';
