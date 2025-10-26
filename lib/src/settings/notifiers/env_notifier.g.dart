// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EnvNotifier)
const envProvider = EnvNotifierProvider._();

final class EnvNotifierProvider
    extends $NotifierProvider<EnvNotifier, Set<String>> {
  const EnvNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'envProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$envNotifierHash();

  @$internal
  @override
  EnvNotifier create() => EnvNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }
}

String _$envNotifierHash() => r'7cd377fc6c6d7fb75d2ecc87089aab9348ebe6d2';

abstract class _$EnvNotifier extends $Notifier<Set<String>> {
  Set<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<String>, Set<String>>,
              Set<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
