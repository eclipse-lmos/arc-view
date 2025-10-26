// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_exporter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Exports a use case file.
///

@ProviderFor(toolsExporter)
const toolsExporterProvider = ToolsExporterProvider._();

///
/// Exports a use case file.
///

final class ToolsExporterProvider
    extends $FunctionalProvider<ToolsExporter, ToolsExporter, ToolsExporter>
    with $Provider<ToolsExporter> {
  ///
  /// Exports a use case file.
  ///
  const ToolsExporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolsExporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolsExporterHash();

  @$internal
  @override
  $ProviderElement<ToolsExporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ToolsExporter create(Ref ref) {
    return toolsExporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToolsExporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToolsExporter>(value),
    );
  }
}

String _$toolsExporterHash() => r'b5ca1f95b674a7938be47554edfa6dc8d07665de';
