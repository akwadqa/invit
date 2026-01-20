// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(eventDetailsRepository)
const eventDetailsRepositoryProvider = EventDetailsRepositoryProvider._();

final class EventDetailsRepositoryProvider extends $FunctionalProvider<
    EventDetailsRepository,
    EventDetailsRepository,
    EventDetailsRepository> with $Provider<EventDetailsRepository> {
  const EventDetailsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'eventDetailsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$eventDetailsRepositoryHash();

  @$internal
  @override
  $ProviderElement<EventDetailsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EventDetailsRepository create(Ref ref) {
    return eventDetailsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventDetailsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventDetailsRepository>(value),
    );
  }
}

String _$eventDetailsRepositoryHash() =>
    r'f25cdfd4c9161f8ba9f696d80c509b80a17f1c46';
