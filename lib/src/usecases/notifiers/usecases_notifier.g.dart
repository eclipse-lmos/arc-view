// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecases_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Manages the creation and editing of Use Cases files.
///

@ProviderFor(UseCasesNotifier)
const useCasesProvider = UseCasesNotifierProvider._();

///
/// Manages the creation and editing of Use Cases files.
///
final class UseCasesNotifierProvider
    extends $AsyncNotifierProvider<UseCasesNotifier, UseCases> {
  ///
  /// Manages the creation and editing of Use Cases files.
  ///
  const UseCasesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCasesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCasesNotifierHash();

  @$internal
  @override
  UseCasesNotifier create() => UseCasesNotifier();
}

String _$useCasesNotifierHash() => r'c2c7a1c776ae137e8e271968137f347d2b900c94';

///
/// Manages the creation and editing of Use Cases files.
///

abstract class _$UseCasesNotifier extends $AsyncNotifier<UseCases> {
  FutureOr<UseCases> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<UseCases>, UseCases>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UseCases>, UseCases>,
              AsyncValue<UseCases>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
