// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapController)
const mapControllerProvider = MapControllerFamily._();

final class MapControllerProvider
    extends $AsyncNotifierProvider<MapController, MapState> {
  const MapControllerProvider._(
      {required MapControllerFamily super.from,
      required String? super.argument})
      : super(
          retry: null,
          name: r'mapControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$mapControllerHash();

  @override
  String toString() {
    return r'mapControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MapController create() => MapController();

  @override
  bool operator ==(Object other) {
    return other is MapControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mapControllerHash() => r'7ef7f2a8d1e669a726c1f6261f0748314a8060f4';

final class MapControllerFamily extends $Family
    with
        $ClassFamilyOverride<MapController, AsyncValue<MapState>, MapState,
            FutureOr<MapState>, String?> {
  const MapControllerFamily._()
      : super(
          retry: null,
          name: r'mapControllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  MapControllerProvider call(
    String? occasionId,
  ) =>
      MapControllerProvider._(argument: occasionId, from: this);

  @override
  String toString() => r'mapControllerProvider';
}

abstract class _$MapController extends $AsyncNotifier<MapState> {
  late final _$args = ref.$arg as String?;
  String? get occasionId => _$args;

  FutureOr<MapState> build(
    String? occasionId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args,
    );
    final ref = this.ref as $Ref<AsyncValue<MapState>, MapState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<MapState>, MapState>,
        AsyncValue<MapState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
