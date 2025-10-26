// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tools_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Holds the use case that has been selected and is sent to the Agent.
///

@ProviderFor(ToolsNotifier)
const toolsProvider = ToolsNotifierProvider._();

///
/// Holds the use case that has been selected and is sent to the Agent.
///
final class ToolsNotifierProvider
    extends $NotifierProvider<ToolsNotifier, List<TestTool>> {
  ///
  /// Holds the use case that has been selected and is sent to the Agent.
  ///
  const ToolsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolsNotifierHash();

  @$internal
  @override
  ToolsNotifier create() => ToolsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TestTool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TestTool>>(value),
    );
  }
}

String _$toolsNotifierHash() => r'b238e40de763896182e7d5e7c88d0cc4e763d788';

///
/// Holds the use case that has been selected and is sent to the Agent.
///

abstract class _$ToolsNotifier extends $Notifier<List<TestTool>> {
  List<TestTool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<TestTool>, List<TestTool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TestTool>, List<TestTool>>,
              List<TestTool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
