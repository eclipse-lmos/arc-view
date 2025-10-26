// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_tools_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Provides access to the tools provided by the agent.
///

@ProviderFor(RemoteToolsNotifier)
const remoteToolsProvider = RemoteToolsNotifierProvider._();

///
/// Provides access to the tools provided by the agent.
///
final class RemoteToolsNotifierProvider
    extends $AsyncNotifierProvider<RemoteToolsNotifier, List<Tool>> {
  ///
  /// Provides access to the tools provided by the agent.
  ///
  const RemoteToolsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteToolsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteToolsNotifierHash();

  @$internal
  @override
  RemoteToolsNotifier create() => RemoteToolsNotifier();
}

String _$remoteToolsNotifierHash() =>
    r'a1a965103197f6f10b2204ea201ff61d3f8b3262';

///
/// Provides access to the tools provided by the agent.
///

abstract class _$RemoteToolsNotifier extends $AsyncNotifier<List<Tool>> {
  FutureOr<List<Tool>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Tool>>, List<Tool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Tool>>, List<Tool>>,
              AsyncValue<List<Tool>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
