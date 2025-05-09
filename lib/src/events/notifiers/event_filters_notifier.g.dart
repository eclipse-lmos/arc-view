// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_filters_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventFiltersNotifierHash() =>
    r'ec2a62d87f2d8edb40e3bbfcc897b88caeec06f6';

///
/// Provides active filters for the events.
///
///
/// Copied from [EventFiltersNotifier].
@ProviderFor(EventFiltersNotifier)
final eventFiltersNotifierProvider =
    NotifierProvider<EventFiltersNotifier, List<EventFilter>>.internal(
      EventFiltersNotifier.new,
      name: r'eventFiltersNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$eventFiltersNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$EventFiltersNotifier = Notifier<List<EventFilter>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
