// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_usecase_group_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Manages the selected use case group.
///

@ProviderFor(SelectedUseCaseGroupNotifier)
const selectedUseCaseGroupProvider = SelectedUseCaseGroupNotifierProvider._();

///
/// Manages the selected use case group.
///
final class SelectedUseCaseGroupNotifierProvider
    extends $NotifierProvider<SelectedUseCaseGroupNotifier, String> {
  ///
  /// Manages the selected use case group.
  ///
  const SelectedUseCaseGroupNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedUseCaseGroupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedUseCaseGroupNotifierHash();

  @$internal
  @override
  SelectedUseCaseGroupNotifier create() => SelectedUseCaseGroupNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$selectedUseCaseGroupNotifierHash() =>
    r'07f480e783a5b3fc3a74fff81c667e909dced1ec';

///
/// Manages the selected use case group.
///

abstract class _$SelectedUseCaseGroupNotifier extends $Notifier<String> {
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
