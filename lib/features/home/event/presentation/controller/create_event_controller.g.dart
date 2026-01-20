// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateEventController)
const createEventControllerProvider = CreateEventControllerProvider._();

final class CreateEventControllerProvider
    extends $AsyncNotifierProvider<CreateEventController, CreateEventState> {
  const CreateEventControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'createEventControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$createEventControllerHash();

  @$internal
  @override
  CreateEventController create() => CreateEventController();
}

String _$createEventControllerHash() =>
    r'2190265d606734b8f7934433e1a30bf1cf481599';

abstract class _$CreateEventController
    extends $AsyncNotifier<CreateEventState> {
  FutureOr<CreateEventState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<CreateEventState>, CreateEventState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<CreateEventState>, CreateEventState>,
        AsyncValue<CreateEventState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
