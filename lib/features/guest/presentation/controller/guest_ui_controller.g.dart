// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_ui_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GuestUiController)
const guestUiControllerProvider = GuestUiControllerProvider._();

final class GuestUiControllerProvider
    extends $AsyncNotifierProvider<GuestUiController, GuestUiState> {
  const GuestUiControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'guestUiControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$guestUiControllerHash();

  @$internal
  @override
  GuestUiController create() => GuestUiController();
}

String _$guestUiControllerHash() => r'189f67e6ad637b0d9af74e53d8b9429615507df6';

abstract class _$GuestUiController extends $AsyncNotifier<GuestUiState> {
  FutureOr<GuestUiState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<GuestUiState>, GuestUiState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<GuestUiState>, GuestUiState>,
        AsyncValue<GuestUiState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
