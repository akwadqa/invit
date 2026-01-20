import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:invit/features/auth/signIn/domain/model/signin_response_model.dart';
import 'package:invit/features/auth/signIn/presentation/controller/sign_in_state.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:pinput/pinput.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  FutureOr<SignInState> build() => SignInState();

  Future<void> signIn(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(signInRepositoryProvider);
      final response = await repo.signIn(phone);
      return state.value!.copyWith(signinResponseModel: response.data);
    });
  }
  
  void makeResendButtonVisible(bool isVisible) {
    state = AsyncData(state.value!.copyWith(isResend: isVisible));
  }

  void makeConfirmButtonVisible(bool isVisible) {
    state = AsyncData(state.value!.copyWith(isVerify: isVisible));
  }

  void checkPhoneFilled(bool isFilled) {
    state = AsyncData(state.value!.copyWith(isPhoneFilled: isFilled));
  }

  // void changePhoneNumber(String value) {
  //   phoneController.setText(value);
  //   ref.invalidateSelf();
  //   // state=Async(value);
  //   // Dev.logLine("value= $value");
  //   // Dev.logLine(" phoneController.text= ${phoneController.text}");
  // }
}
