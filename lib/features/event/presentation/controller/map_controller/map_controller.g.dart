// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapController)
final mapControllerProvider = MapControllerFamily._();

final class MapControllerProvider
    extends $AsyncNotifierProvider<MapController, MapState> {
  MapControllerProvider._(
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

String _$mapControllerHash() => r'06939c1fa1423e92294d5c0059b8cc1792dcb03b';

final class MapControllerFamily extends $Family
    with
        $ClassFamilyOverride<MapController, AsyncValue<MapState>, MapState,
            FutureOr<MapState>, String?> {
  MapControllerFamily._()
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
    final ref = this.ref as $Ref<AsyncValue<MapState>, MapState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<MapState>, MapState>,
        AsyncValue<MapState>,
        Object?,
        Object?>;
    element.handleCreate(
        ref,
        () => build(
              _$args,
            ));
  }
}
