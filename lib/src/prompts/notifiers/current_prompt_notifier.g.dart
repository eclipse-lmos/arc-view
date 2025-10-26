// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_prompt_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentPromptNotifier)
const currentPromptProvider = CurrentPromptNotifierProvider._();

final class CurrentPromptNotifierProvider
    extends $NotifierProvider<CurrentPromptNotifier, String> {
  const CurrentPromptNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentPromptProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentPromptNotifierHash();

  @$internal
  @override
  CurrentPromptNotifier create() => CurrentPromptNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$currentPromptNotifierHash() =>
    r'9eef6fe65f9645a801f6bbd0d50e550684f92187';

abstract class _$CurrentPromptNotifier extends $Notifier<String> {
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
