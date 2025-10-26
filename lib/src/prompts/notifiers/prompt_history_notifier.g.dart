// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_history_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Notifier for the prompt history.
///

@ProviderFor(PromptHistoryNotifier)
const promptHistoryProvider = PromptHistoryNotifierProvider._();

///
/// Notifier for the prompt history.
///
final class PromptHistoryNotifierProvider
    extends $AsyncNotifierProvider<PromptHistoryNotifier, List<String>> {
  ///
  /// Notifier for the prompt history.
  ///
  const PromptHistoryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'promptHistoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$promptHistoryNotifierHash();

  @$internal
  @override
  PromptHistoryNotifier create() => PromptHistoryNotifier();
}

String _$promptHistoryNotifierHash() =>
    r'b5535cd2ba865ba45432514bcb0e8b33fda41c75';

///
/// Notifier for the prompt history.
///

abstract class _$PromptHistoryNotifier extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
