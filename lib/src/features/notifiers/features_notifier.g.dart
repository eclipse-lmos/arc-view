// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturesNotifier)
const featuresProvider = FeaturesNotifierProvider._();

final class FeaturesNotifierProvider
    extends $NotifierProvider<FeaturesNotifier, List<Feature>> {
  const FeaturesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'featuresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$featuresNotifierHash();

  @$internal
  @override
  FeaturesNotifier create() => FeaturesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Feature> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Feature>>(value),
    );
  }
}

String _$featuresNotifierHash() => r'91e081880a53d44109d613d997f52774006166b7';

abstract class _$FeaturesNotifier extends $Notifier<List<Feature>> {
  List<Feature> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Feature>, List<Feature>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Feature>, List<Feature>>,
              List<Feature>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
