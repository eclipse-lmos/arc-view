// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_sender.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(messageSender)
const messageSenderProvider = MessageSenderProvider._();

final class MessageSenderProvider
    extends $FunctionalProvider<MessageSender, MessageSender, MessageSender>
    with $Provider<MessageSender> {
  const MessageSenderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'messageSenderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$messageSenderHash();

  @$internal
  @override
  $ProviderElement<MessageSender> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MessageSender create(Ref ref) {
    return messageSender(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MessageSender value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MessageSender>(value),
    );
  }
}

String _$messageSenderHash() => r'f8b7e4cce90d2491c3e9665ebee14134e8565e9d';
