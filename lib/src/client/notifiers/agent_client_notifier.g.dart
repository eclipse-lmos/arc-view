// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_client_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentClientNotifier)
const agentClientProvider = AgentClientNotifierProvider._();

final class AgentClientNotifierProvider
    extends $NotifierProvider<AgentClientNotifier, OneAIClient> {
  const AgentClientNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentClientNotifierHash();

  @$internal
  @override
  AgentClientNotifier create() => AgentClientNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OneAIClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OneAIClient>(value),
    );
  }
}

String _$agentClientNotifierHash() =>
    r'b65f172961f60dcc8332f5786b67019963da542a';

abstract class _$AgentClientNotifier extends $Notifier<OneAIClient> {
  OneAIClient build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OneAIClient, OneAIClient>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OneAIClient, OneAIClient>,
              OneAIClient,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
