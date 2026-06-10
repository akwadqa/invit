// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateEventController)
final createEventControllerProvider = CreateEventControllerProvider._();

final class CreateEventControllerProvider
    extends $AsyncNotifierProvider<CreateEventController, CreateEventState> {
  CreateEventControllerProvider._()
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
    r'e5d23561f3982e758190f773b975693b5732ed8a';

abstract class _$CreateEventController
    extends $AsyncNotifier<CreateEventState> {
  FutureOr<CreateEventState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<CreateEventState>, CreateEventState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<CreateEventState>, CreateEventState>,
        AsyncValue<CreateEventState>,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
