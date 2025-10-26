// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_execution_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Provides access to the tools provided by the agent.
///

@ProviderFor(ToolExecutionNotifier)
const toolExecutionProvider = ToolExecutionNotifierProvider._();

///
/// Provides access to the tools provided by the agent.
///
final class ToolExecutionNotifierProvider
    extends $NotifierProvider<ToolExecutionNotifier, String> {
  ///
  /// Provides access to the tools provided by the agent.
  ///
  const ToolExecutionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toolExecutionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toolExecutionNotifierHash();

  @$internal
  @override
  ToolExecutionNotifier create() => ToolExecutionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$toolExecutionNotifierHash() =>
    r'9c877d30680819bb4843d8b5cece6e78d7487e4a';

///
/// Provides access to the tools provided by the agent.
///

abstract class _$ToolExecutionNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
