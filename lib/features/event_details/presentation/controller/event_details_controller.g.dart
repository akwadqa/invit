// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EventDetailsController)
const eventDetailsControllerProvider = EventDetailsControllerFamily._();

final class EventDetailsControllerProvider
    extends $AsyncNotifierProvider<EventDetailsController, EventDetailsModel> {
  const EventDetailsControllerProvider._(
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
    r'0800d9537fdc9a854b491830941f905b9ec77f12';

final class EventDetailsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
            EventDetailsController,
            AsyncValue<EventDetailsModel>,
            EventDetailsModel,
            FutureOr<EventDetailsModel>,
            String> {
  const EventDetailsControllerFamily._()
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

abstract class _$EventDetailsController
    extends $AsyncNotifier<EventDetailsModel> {
  late final _$args = ref.$arg as String;
  String get ocassionId => _$args;

  FutureOr<EventDetailsModel> build({
    required String ocassionId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      ocassionId: _$args,
    );
    final ref =
        this.ref as $Ref<AsyncValue<EventDetailsModel>, EventDetailsModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<EventDetailsModel>, EventDetailsModel>,
        AsyncValue<EventDetailsModel>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
