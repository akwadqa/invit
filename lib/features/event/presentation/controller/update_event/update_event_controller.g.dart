// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateEventController)
final updateEventControllerProvider = UpdateEventControllerFamily._();

final class UpdateEventControllerProvider
    extends $AsyncNotifierProvider<UpdateEventController, UpdateEventState> {
  UpdateEventControllerProvider._(
      {required UpdateEventControllerFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'updateEventControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$updateEventControllerHash();

  @override
  String toString() {
    return r'updateEventControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UpdateEventController create() => UpdateEventController();

  @override
  bool operator ==(Object other) {
    return other is UpdateEventControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$updateEventControllerHash() =>
    r'f120fd8bbe4fa7b444918c17c228b175b7d6f355';

final class UpdateEventControllerFamily extends $Family
    with
        $ClassFamilyOverride<
            UpdateEventController,
            AsyncValue<UpdateEventState>,
            UpdateEventState,
            FutureOr<UpdateEventState>,
            String> {
  UpdateEventControllerFamily._()
      : super(
          retry: null,
          name: r'updateEventControllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  UpdateEventControllerProvider call({
    required String ocassionId,
  }) =>
      UpdateEventControllerProvider._(argument: ocassionId, from: this);

  @override
  String toString() => r'updateEventControllerProvider';
}

abstract class _$UpdateEventController
    extends $AsyncNotifier<UpdateEventState> {
  late final _$args = ref.$arg as String;
  String get ocassionId => _$args;

  FutureOr<UpdateEventState> build({
    required String ocassionId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<UpdateEventState>, UpdateEventState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<UpdateEventState>, UpdateEventState>,
        AsyncValue<UpdateEventState>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              ocassionId: _$args,
            ));
  }
}
