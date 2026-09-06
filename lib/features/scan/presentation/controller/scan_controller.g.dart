// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScanController)
final scanControllerProvider = ScanControllerProvider._();

final class ScanControllerProvider
    extends $AsyncNotifierProvider<ScanController, ScanState> {
  ScanControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scanControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scanControllerHash();

  @$internal
  @override
  ScanController create() => ScanController();
}

String _$scanControllerHash() => r'7cf846c66e8401de7121a7fbfb56e2bd2ee41e36';

abstract class _$ScanController extends $AsyncNotifier<ScanState> {
  FutureOr<ScanState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ScanState>, ScanState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ScanState>, ScanState>,
              AsyncValue<ScanState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
