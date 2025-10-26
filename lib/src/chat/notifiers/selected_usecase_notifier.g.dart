// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_usecase_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Holds the use case that has been selected and is sent to the Agent.
///

@ProviderFor(SelectedUsecaseNotifier)
const selectedUsecaseProvider = SelectedUsecaseNotifierProvider._();

///
/// Holds the use case that has been selected and is sent to the Agent.
///
final class SelectedUsecaseNotifierProvider
    extends $NotifierProvider<SelectedUsecaseNotifier, UseCase?> {
  ///
  /// Holds the use case that has been selected and is sent to the Agent.
  ///
  const SelectedUsecaseNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedUsecaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedUsecaseNotifierHash();

  @$internal
  @override
  SelectedUsecaseNotifier create() => SelectedUsecaseNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UseCase? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UseCase?>(value),
    );
  }
}

String _$selectedUsecaseNotifierHash() =>
    r'983b51b8ae5c64543630943dc8c93b5c1bed48f1';

///
/// Holds the use case that has been selected and is sent to the Agent.
///

abstract class _$SelectedUsecaseNotifier extends $Notifier<UseCase?> {
  UseCase? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UseCase?, UseCase?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UseCase?, UseCase?>,
              UseCase?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
