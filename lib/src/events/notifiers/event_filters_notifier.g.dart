// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_filters_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// Provides active filters for the events.
///

@ProviderFor(EventFiltersNotifier)
const eventFiltersProvider = EventFiltersNotifierProvider._();

///
/// Provides active filters for the events.
///
final class EventFiltersNotifierProvider
    extends $NotifierProvider<EventFiltersNotifier, List<EventFilter>> {
  ///
  /// Provides active filters for the events.
  ///
  const EventFiltersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventFiltersProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventFiltersNotifierHash();

  @$internal
  @override
  EventFiltersNotifier create() => EventFiltersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<EventFilter> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<EventFilter>>(value),
    );
  }
}

String _$eventFiltersNotifierHash() =>
    r'fd27cf0594baba3ad3b36324abf0d34a17fef592';

///
/// Provides active filters for the events.
///

abstract class _$EventFiltersNotifier extends $Notifier<List<EventFilter>> {
  List<EventFilter> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<EventFilter>, List<EventFilter>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<EventFilter>, List<EventFilter>>,
              List<EventFilter>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
