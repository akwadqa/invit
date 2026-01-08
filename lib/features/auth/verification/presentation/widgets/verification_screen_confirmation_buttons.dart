import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/signUp_form.dart';
import 'package:invit/features/auth/verification/presentation/controller/verify_otp_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class VerificationScreenConfirmationButtons extends ConsumerWidget {
  final String otp;
  final String phone;
  final GlobalKey<FormState> formKey;
  const VerificationScreenConfirmationButtons(
      {super.key,
      required this.otp,
      required this.phone,
      required this.formKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 24,
      children: [
        Consumer(builder: (context, ref, child) {
          ref.listen(verifyOtpControllerProvider, (prev, next) {
            if (next is AsyncData) {
              // context.maybePop().then((_) {
              debugPrint("Success check");
              context.pushReplacement(AppRoutes.homeScreen);
              // context
              //     .pushRoute(VerificationRoute(inputedPhone: _phoneNumber!));
              // _showDialog();
              // });
            } else if (next is AsyncError) {
              showErrorDialog(context, next.error.toString());
            }
          });

          final signInProvider = ref.watch(verifyOtpControllerProvider);
          if (signInProvider is AsyncLoading) {
            return AppLoader();
            // const FadeCircleLoadingIndicator();
          }
          return CustomButtonWidget(
            text: 'confirm'.tr(),
            onTap: () {
              final isValid = formKey.currentState!.validate();
              debugPrint('FORM VALID: $isValid');
              if (!isValid) return;
              ref
                  .read(verifyOtpControllerProvider.notifier)
                  .verifyOtp(phone, otp);
            },
            isFiled: true,
            height: 50,
            width: double.infinity,
            backgroundColor: AppColors.primary,
            radius: 10,
          );
        }),
        CustomButtonWidget(
          text: 'resend_code'.tr(),
          // color: AppColors.black,
          onTap: () {},
          isFiled: false,
          height: 50,
          width: double.infinity,
          backgroundColor: AppColors.background,
          radius: 10,
        ),
      ],
    );
  }
}
