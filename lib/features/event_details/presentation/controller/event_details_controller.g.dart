// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EventDetailsController)
final eventDetailsControllerProvider = EventDetailsControllerFamily._();

final class EventDetailsControllerProvider
    extends $AsyncNotifierProvider<EventDetailsController, EventModel> {
  EventDetailsControllerProvider._(
      {required EventDetailsControllerFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'eventDetailsControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$eventDetailsControllerHash();

  @override
  String toString() {
    return r'eventDetailsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EventDetailsController create() => EventDetailsController();

  @override
  bool operator ==(Object other) {
    return other is EventDetailsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$eventDetailsControllerHash() =>
    r'7c59bc043f441fca69d1583dd107a579f446b7c0';

final class EventDetailsControllerFamily extends $Family
    with
        $ClassFamilyOverride<EventDetailsController, AsyncValue<EventModel>,
            EventModel, FutureOr<EventModel>, String> {
  EventDetailsControllerFamily._()
      : super(
          retry: null,
          name: r'eventDetailsControllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  EventDetailsControllerProvider call({
    required String ocassionId,
  }) =>
      EventDetailsControllerProvider._(argument: ocassionId, from: this);

  @override
  String toString() => r'eventDetailsControllerProvider';
}

abstract class _$EventDetailsController extends $AsyncNotifier<EventModel> {
  late final _$args = ref.$arg as String;
  String get ocassionId => _$args;

  FutureOr<EventModel> build({
    required String ocassionId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<EventModel>, EventModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<EventModel>, EventModel>,
        AsyncValue<EventModel>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              ocassionId: _$args,
            ));
  }
}
