// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_events_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(featuredEventsRepository)
final featuredEventsRepositoryProvider = FeaturedEventsRepositoryProvider._();

final class FeaturedEventsRepositoryProvider extends $FunctionalProvider<
    FeaturedEventsRepository,
    FeaturedEventsRepository,
    FeaturedEventsRepository> with $Provider<FeaturedEventsRepository> {
  FeaturedEventsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'featuredEventsRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$featuredEventsRepositoryHash();

  @$internal
  @override
  $ProviderElement<FeaturedEventsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FeaturedEventsRepository create(Ref ref) {
    return featuredEventsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeaturedEventsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeaturedEventsRepository>(value),
    );
  }
}

String _$featuredEventsRepositoryHash() =>
    r'4a9511fbc888a77dcc518b81c13e237160316d6e';
