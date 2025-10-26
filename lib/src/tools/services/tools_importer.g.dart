// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_importer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Imports a tool.
///

@ProviderFor(toolsImporter)
const toolsImporterProvider = ToolsImporterProvider._();

///
/// Imports a tool.
///

final class ToolsImporterProvider
    extends $FunctionalProvider<ToolsImporter, ToolsImporter, ToolsImporter>
    with $Provider<ToolsImporter> {
  ///
  /// Imports a tool.
  ///
  const ToolsImporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolsImporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolsImporterHash();

  @$internal
  @override
  $ProviderElement<ToolsImporter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ToolsImporter create(Ref ref) {
    return toolsImporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToolsImporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToolsImporter>(value),
    );
  }
}

String _$toolsImporterHash() => r'b1124610e8c149707bacea2baae92e0b5e8032e1';
