// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_tool_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Holds the use case that has been selected and is sent to the Agent.
///

@ProviderFor(SelectedToolNotifier)
const selectedToolProvider = SelectedToolNotifierProvider._();

///
/// Holds the use case that has been selected and is sent to the Agent.
///
final class SelectedToolNotifierProvider
    extends $NotifierProvider<SelectedToolNotifier, Set<TestTool>> {
  ///
  /// Holds the use case that has been selected and is sent to the Agent.
  ///
  const SelectedToolNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedToolProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedToolNotifierHash();

  @$internal
  @override
  SelectedToolNotifier create() => SelectedToolNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<TestTool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<TestTool>>(value),
    );
  }
}

String _$selectedToolNotifierHash() =>
    r'4add2252aa533b622085906415f9a1a3f19288d8';

///
/// Holds the use case that has been selected and is sent to the Agent.
///

abstract class _$SelectedToolNotifier extends $Notifier<Set<TestTool>> {
  Set<TestTool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<TestTool>, Set<TestTool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<TestTool>, Set<TestTool>>,
              Set<TestTool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
