import 'package:flutter/material.dart';
import 'package:invit/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:invit/features/auth/verification/data/repositories/verify_otp_repository.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:pinput/pinput.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_otp_controller.g.dart';

@riverpod
class VerifyOtpController extends _$VerifyOtpController {
  @override
  FutureOr<void> build() => null;
  final TextEditingController phoneController = TextEditingController();

  Future<void>  verifyOtp(String phone,String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(verifyOtpRepositoryProvider);
      await repo.verifyOtp(phone,otp);
      // return null;
    });
  }

 
}
