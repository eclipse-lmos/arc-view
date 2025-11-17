// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConversationsNotifier)
const conversationsProvider = ConversationsNotifierProvider._();

final class ConversationsNotifierProvider
    extends $NotifierProvider<ConversationsNotifier, Conversations> {
  const ConversationsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationsNotifierHash();

  @$internal
  @override
  ConversationsNotifier create() => ConversationsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Conversations value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Conversations>(value),
    );
  }
}

String _$conversationsNotifierHash() =>
    r'435277df541c7b07e2d1253e6a423d90ba570a34';

abstract class _$ConversationsNotifier extends $Notifier<Conversations> {
  Conversations build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Conversations, Conversations>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Conversations, Conversations>,
              Conversations,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
