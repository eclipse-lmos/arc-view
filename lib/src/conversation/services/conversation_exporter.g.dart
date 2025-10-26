// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_exporter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(conversationExporter)
const conversationExporterProvider = ConversationExporterProvider._();

final class ConversationExporterProvider
    extends
        $FunctionalProvider<
          ConversationExporter,
          ConversationExporter,
          ConversationExporter
        >
    with $Provider<ConversationExporter> {
  const ConversationExporterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'conversationExporterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$conversationExporterHash();

  @$internal
  @override
  $ProviderElement<ConversationExporter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConversationExporter create(Ref ref) {
    return conversationExporter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConversationExporter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConversationExporter>(value),
    );
  }
}

String _$conversationExporterHash() =>
    r'd8237bfd7eb84034081e1234031413e8d133fa66';
