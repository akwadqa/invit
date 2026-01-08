import 'package:flutter/material.dart';
import 'package:invit/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:pinput/pinput.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  FutureOr<String?> build() => "";
  final TextEditingController phoneController = TextEditingController();

  Future<void> signIn(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(signInRepositoryProvider);
      await repo.signIn(phone);
      return null;
    });
  }

  void changePhoneNumber(String value) {
    phoneController.setText(value);
    ref.invalidateSelf();
    // state=Async(value);
    // Dev.logLine("value= $value");
    // Dev.logLine(" phoneController.text= ${phoneController.text}");
  }
}
