// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Holds the use case that has been selected and is sent to the Agent.
///

@ProviderFor(NotificationNotifier)
const notificationProvider = NotificationNotifierProvider._();

///
/// Holds the use case that has been selected and is sent to the Agent.
///
final class NotificationNotifierProvider
    extends $NotifierProvider<NotificationNotifier, String?> {
  ///
  /// Holds the use case that has been selected and is sent to the Agent.
  ///
  const NotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationNotifierHash();

  @$internal
  @override
  NotificationNotifier create() => NotificationNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$notificationNotifierHash() =>
    r'7ff690911c6763273c60954358b3e109776c1b74';

///
/// Holds the use case that has been selected and is sent to the Agent.
///

abstract class _$NotificationNotifier extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
