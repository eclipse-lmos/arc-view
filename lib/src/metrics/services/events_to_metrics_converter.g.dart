// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_to_metrics_converter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(eventsToMetricsConverter)
const eventsToMetricsConverterProvider = EventsToMetricsConverterProvider._();

final class EventsToMetricsConverterProvider
    extends
        $FunctionalProvider<
          EventsToMetricsConverter,
          EventsToMetricsConverter,
          EventsToMetricsConverter
        >
    with $Provider<EventsToMetricsConverter> {
  const EventsToMetricsConverterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventsToMetricsConverterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventsToMetricsConverterHash();

  @$internal
  @override
  $ProviderElement<EventsToMetricsConverter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EventsToMetricsConverter create(Ref ref) {
    return eventsToMetricsConverter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventsToMetricsConverter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventsToMetricsConverter>(value),
    );
  }
}

String _$eventsToMetricsConverterHash() =>
    r'c390b5e0f1c6eb3396012f5e91e407136cbbe758';
