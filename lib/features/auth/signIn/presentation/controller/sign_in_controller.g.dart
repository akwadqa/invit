// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignInController)
const signInControllerProvider = SignInControllerProvider._();

final class SignInControllerProvider
    extends $AsyncNotifierProvider<SignInController, String?> {
  const SignInControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signInControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signInControllerHash();

  @$internal
  @override
  SignInController create() => SignInController();
}

String _$signInControllerHash() => r'b2a4ae82eb542782ddaf9f22d4ff54111f4b9d04';

abstract class _$SignInController extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<String?>, String?>,
        AsyncValue<String?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
