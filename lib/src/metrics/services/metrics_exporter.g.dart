// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_exporter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(metricsExporter)
const metricsExporterProvider = MetricsExporterProvider._();

final class MetricsExporterProvider
    extends
        $FunctionalProvider<MetricsExporter, MetricsExporter, MetricsExporter>
    with $Provider<MetricsExporter> {
  const MetricsExporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'metricsExporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$metricsExporterHash();

  @$internal
  @override
  $ProviderElement<MetricsExporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MetricsExporter create(Ref ref) {
    return metricsExporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MetricsExporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MetricsExporter>(value),
    );
  }
}

String _$metricsExporterHash() => r'7b6f728f4f9a1f49edd883cc543666ad91b40a20';
