// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_messages_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appMessagesRepository)
const appMessagesRepositoryProvider = AppMessagesRepositoryProvider._();

final class AppMessagesRepositoryProvider extends $FunctionalProvider<
    AppMessagesRepository,
    AppMessagesRepository,
    AppMessagesRepository> with $Provider<AppMessagesRepository> {
  const AppMessagesRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'appMessagesRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$appMessagesRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppMessagesRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppMessagesRepository create(Ref ref) {
    return appMessagesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppMessagesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppMessagesRepository>(value),
    );
  }
}

String _$appMessagesRepositoryHash() =>
    r'a3355f39624b437f65bfa255ba91e2fe311cbc0d';
