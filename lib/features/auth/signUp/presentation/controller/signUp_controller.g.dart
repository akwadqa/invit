// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signUp_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpController)
const signUpControllerProvider = SignUpControllerProvider._();

final class SignUpControllerProvider
    extends $AsyncNotifierProvider<SignUpController, void> {
  const SignUpControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signUpControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signUpControllerHash();

  @$internal
  @override
  SignUpController create() => SignUpController();
}

String _$signUpControllerHash() => r'09b665da002ce31cf10a4d4abda25753634c0d1e';

abstract class _$SignUpController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
