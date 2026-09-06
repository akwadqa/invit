// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_messages_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppMessagesController)
final appMessagesControllerProvider = AppMessagesControllerProvider._();

final class AppMessagesControllerProvider
    extends
        $AsyncNotifierProvider<AppMessagesController, List<AppMessagesModel>> {
  AppMessagesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appMessagesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appMessagesControllerHash();

  @$internal
  @override
  AppMessagesController create() => AppMessagesController();
}

String _$appMessagesControllerHash() =>
    r'88c74dcdf2601aa5e08947d65aa279f65d5c8f0a';

abstract class _$AppMessagesController
    extends $AsyncNotifier<List<AppMessagesModel>> {
  FutureOr<List<AppMessagesModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<AppMessagesModel>>, List<AppMessagesModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AppMessagesModel>>,
                List<AppMessagesModel>
              >,
              AsyncValue<List<AppMessagesModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
