// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(guestRepository)
const guestRepositoryProvider = GuestRepositoryProvider._();

final class GuestRepositoryProvider extends $FunctionalProvider<GuestRepository,
    GuestRepository, GuestRepository> with $Provider<GuestRepository> {
  const GuestRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'guestRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$guestRepositoryHash();

  @$internal
  @override
  $ProviderElement<GuestRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GuestRepository create(Ref ref) {
    return guestRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GuestRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GuestRepository>(value),
    );
  }
}

String _$guestRepositoryHash() => r'e2b4d18bdb1f04506aec60af095903a1dd1c2a25';
