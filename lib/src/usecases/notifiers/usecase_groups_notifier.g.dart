// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_groups_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Manages the creation and editing of Use Cases files.
///

@ProviderFor(UseCaseGroupsNotifier)
const useCaseGroupsProvider = UseCaseGroupsNotifierProvider._();

///
/// Manages the creation and editing of Use Cases files.
///
final class UseCaseGroupsNotifierProvider
    extends $AsyncNotifierProvider<UseCaseGroupsNotifier, List<UseCaseGroup>> {
  ///
  /// Manages the creation and editing of Use Cases files.
  ///
  const UseCaseGroupsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCaseGroupsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCaseGroupsNotifierHash();

  @$internal
  @override
  UseCaseGroupsNotifier create() => UseCaseGroupsNotifier();
}

String _$useCaseGroupsNotifierHash() =>
    r'c25769ed3ed1623239b17d80f57d7db741a753ba';

///
/// Manages the creation and editing of Use Cases files.
///

abstract class _$UseCaseGroupsNotifier
    extends $AsyncNotifier<List<UseCaseGroup>> {
  FutureOr<List<UseCaseGroup>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<UseCaseGroup>>, List<UseCaseGroup>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UseCaseGroup>>, List<UseCaseGroup>>,
              AsyncValue<List<UseCaseGroup>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
