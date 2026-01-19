import 'package:flutter/material.dart';
import 'package:invit/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:invit/features/auth/verification/data/repositories/verify_otp_repository.dart';
import 'package:invit/features/auth/verification/presentation/controller/verify_otp_state.dart';
import 'package:invit/src/application/data/user_information/user_information.dart';
import 'package:invit/src/core/shared_widgets/app_cached_network_image.dart';
import 'package:invit/src/infrastructure/storage/local_storage_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:pinput/pinput.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_otp_controller.g.dart';

@riverpod
class VerifyOtpController extends _$VerifyOtpController {
  @override
  FutureOr<VerifyOtpState> build() => VerifyOtpState();
  final TextEditingController phoneController = TextEditingController();

  Future<void> verifyOtp(String phone, String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(verifyOtpRepositoryProvider);
      final response = await repo.verifyOtp(phone, otp);
      final info = UserInformation(
          token: '',
          fullName: response.data!.firstName + response.data!.lastName,
          mobileNumber: response.data!.mobileNo,
          email: response.data!.email);
      ref.read(localStorageServiceProvider)
        ..saveToken(response.data!.token)
        ..saveUserInfo(info);

      return state.value!.copyWith(verifyOtpResponseModel: response.data);
    });
  }

  Future<void> resendCoe(String phone) async {
    state =
        AsyncData(state.value!.copyWith(signinResponseModel: AsyncLoading()));

    state = AsyncData(state.value!.copyWith(
        signinResponseModel: await AsyncValue.guard(() async {
      final repo = ref.read(signInRepositoryProvider);
      final response = await repo.signIn(phone);

      return Future.value(response.data);
    })));
    // state = const AsyncLoading();
    // state = await AsyncValue.guard(() async {
    //   final repo = ref.read(signInRepositoryProvider);
    //   final response = await repo.signIn(phone);

    //   return state.value!.copyWith(signinResponseModel: response.data);
    // });
  }
}
