// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedEventController)
const featuredEventControllerProvider = FeaturedEventControllerFamily._();

final class FeaturedEventControllerProvider
    extends $AsyncNotifierProvider<FeaturedEventController, AllEventsModel> {
  const FeaturedEventControllerProvider._(
      {required FeaturedEventControllerFamily super.from,
      required String? super.argument})
      : super(
          retry: null,
          name: r'featuredEventControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$featuredEventControllerHash();

  @override
  String toString() {
    return r'featuredEventControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FeaturedEventController create() => FeaturedEventController();

  @override
  bool operator ==(Object other) {
    return other is FeaturedEventControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredEventControllerHash() =>
    r'fdd38b461d40f1ffc0f00c2e9bae96c17f6cc12d';

final class FeaturedEventControllerFamily extends $Family
    with
        $ClassFamilyOverride<
            FeaturedEventController,
            AsyncValue<AllEventsModel>,
            AllEventsModel,
            FutureOr<AllEventsModel>,
            String?> {
  const FeaturedEventControllerFamily._()
      : super(
          retry: null,
          name: r'featuredEventControllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FeaturedEventControllerProvider call({
    String? eventType,
  }) =>
      FeaturedEventControllerProvider._(argument: eventType, from: this);

  @override
  String toString() => r'featuredEventControllerProvider';
}

abstract class _$FeaturedEventController
    extends $AsyncNotifier<AllEventsModel> {
  late final _$args = ref.$arg as String?;
  String? get eventType => _$args;

  FutureOr<AllEventsModel> build({
    String? eventType,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      eventType: _$args,
    );
    final ref = this.ref as $Ref<AsyncValue<AllEventsModel>, AllEventsModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<AllEventsModel>, AllEventsModel>,
        AsyncValue<AllEventsModel>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
