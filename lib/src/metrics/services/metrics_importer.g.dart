// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_importer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(metricsImporter)
const metricsImporterProvider = MetricsImporterProvider._();

final class MetricsImporterProvider
    extends
        $FunctionalProvider<MetricsImporter, MetricsImporter, MetricsImporter>
    with $Provider<MetricsImporter> {
  const MetricsImporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'metricsImporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$metricsImporterHash();

  @$internal
  @override
  $ProviderElement<MetricsImporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MetricsImporter create(Ref ref) {
    return metricsImporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MetricsImporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MetricsImporter>(value),
    );
  }
}

String _$metricsImporterHash() => r'244963e43b17dde104a21b26e33e7964fc027096';
