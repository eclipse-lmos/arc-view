// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_importer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(conversationImporter)
const conversationImporterProvider = ConversationImporterProvider._();

final class ConversationImporterProvider
    extends
        $FunctionalProvider<
          ConversationImporter,
          ConversationImporter,
          ConversationImporter
        >
    with $Provider<ConversationImporter> {
  const ConversationImporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationImporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationImporterHash();

  @$internal
  @override
  $ProviderElement<ConversationImporter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConversationImporter create(Ref ref) {
    return conversationImporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConversationImporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConversationImporter>(value),
    );
  }
}

String _$conversationImporterHash() =>
    r'2f1ce467d77a9fb1585140b5ba5551cd8cbf3166';
