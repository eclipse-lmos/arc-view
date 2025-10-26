// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_metrics_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentMetricsNotifier)
const agentMetricsProvider = AgentMetricsNotifierProvider._();

final class AgentMetricsNotifierProvider
    extends $AsyncNotifierProvider<AgentMetricsNotifier, List<Metrics>> {
  const AgentMetricsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentMetricsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentMetricsNotifierHash();

  @$internal
  @override
  AgentMetricsNotifier create() => AgentMetricsNotifier();
}

String _$agentMetricsNotifierHash() =>
    r'b8e217a2f6deecb859fa245823ed658781c71d97';

abstract class _$AgentMetricsNotifier extends $AsyncNotifier<List<Metrics>> {
  FutureOr<List<Metrics>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Metrics>>, List<Metrics>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Metrics>>, List<Metrics>>,
              AsyncValue<List<Metrics>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
