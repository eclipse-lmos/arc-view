// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_exporter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Exports a use case file.
///

@ProviderFor(useCaseExporter)
const useCaseExporterProvider = UseCaseExporterProvider._();

///
/// Exports a use case file.
///

final class UseCaseExporterProvider
    extends
        $FunctionalProvider<UseCaseExporter, UseCaseExporter, UseCaseExporter>
    with $Provider<UseCaseExporter> {
  ///
  /// Exports a use case file.
  ///
  const UseCaseExporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCaseExporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCaseExporterHash();

  @$internal
  @override
  $ProviderElement<UseCaseExporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UseCaseExporter create(Ref ref) {
    return useCaseExporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UseCaseExporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UseCaseExporter>(value),
    );
  }
}

String _$useCaseExporterHash() => r'3722f6fabde6282463991b97a05526d96c0f5018';
