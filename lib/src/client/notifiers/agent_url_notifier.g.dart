// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_url_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentUrlNotifier)
const agentUrlProvider = AgentUrlNotifierProvider._();

final class AgentUrlNotifierProvider
    extends $NotifierProvider<AgentUrlNotifier, AgentUrlData> {
  const AgentUrlNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentUrlProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentUrlNotifierHash();

  @$internal
  @override
  AgentUrlNotifier create() => AgentUrlNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AgentUrlData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AgentUrlData>(value),
    );
  }
}

String _$agentUrlNotifierHash() => r'963379a85c681ca7e36244495a97270b98ad1d08';

abstract class _$AgentUrlNotifier extends $Notifier<AgentUrlData> {
  AgentUrlData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AgentUrlData, AgentUrlData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AgentUrlData, AgentUrlData>,
              AgentUrlData,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
