// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_event_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedEventController)
const featuredEventControllerProvider = FeaturedEventControllerProvider._();

final class FeaturedEventControllerProvider extends $AsyncNotifierProvider<
    FeaturedEventController, List<AllEventsModel>> {
  const FeaturedEventControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'featuredEventControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$featuredEventControllerHash();

  @$internal
  @override
  FeaturedEventController create() => FeaturedEventController();
}

String _$featuredEventControllerHash() =>
    r'db4e6673ab2f19dd592fca26179d3bbe01e42d5e';

abstract class _$FeaturedEventController
    extends $AsyncNotifier<List<AllEventsModel>> {
  FutureOr<List<AllEventsModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref
        as $Ref<AsyncValue<List<AllEventsModel>>, List<AllEventsModel>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<AllEventsModel>>, List<AllEventsModel>>,
        AsyncValue<List<AllEventsModel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
