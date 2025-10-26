// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(toolsRepository)
const toolsRepositoryProvider = ToolsRepositoryProvider._();

final class ToolsRepositoryProvider
    extends
        $FunctionalProvider<ToolsRepository, ToolsRepository, ToolsRepository>
    with $Provider<ToolsRepository> {
  const ToolsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ToolsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ToolsRepository create(Ref ref) {
    return toolsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ToolsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ToolsRepository>(value),
    );
  }
}

String _$toolsRepositoryHash() => r'e5a60213b7491e0272f64c3804fb542b0eebde0a';
