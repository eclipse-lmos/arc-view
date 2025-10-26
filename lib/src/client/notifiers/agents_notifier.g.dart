// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentsNotifier)
const agentsProvider = AgentsNotifierProvider._();

final class AgentsNotifierProvider
    extends $AsyncNotifierProvider<AgentsNotifier, Agents> {
  const AgentsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'agentsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$agentsNotifierHash();

  @$internal
  @override
  AgentsNotifier create() => AgentsNotifier();
}

String _$agentsNotifierHash() => r'45f44972c11d2366927d264ce843f9e9953aebf1';

abstract class _$AgentsNotifier extends $AsyncNotifier<Agents> {
  FutureOr<Agents> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Agents>, Agents>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Agents>, Agents>,
              AsyncValue<Agents>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
