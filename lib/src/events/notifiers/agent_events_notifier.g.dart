// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_events_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentEventsNotifier)
const agentEventsProvider = AgentEventsNotifierProvider._();

final class AgentEventsNotifierProvider
    extends $NotifierProvider<AgentEventsNotifier, List<AgentEvent>> {
  const AgentEventsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentEventsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentEventsNotifierHash();

  @$internal
  @override
  AgentEventsNotifier create() => AgentEventsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<AgentEvent> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<AgentEvent>>(value),
    );
  }
}

String _$agentEventsNotifierHash() =>
    r'5b340f9bd29f8a0558d0708919fa6e9439e785b6';

abstract class _$AgentEventsNotifier extends $Notifier<List<AgentEvent>> {
  List<AgentEvent> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<AgentEvent>, List<AgentEvent>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<AgentEvent>, List<AgentEvent>>,
              List<AgentEvent>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
