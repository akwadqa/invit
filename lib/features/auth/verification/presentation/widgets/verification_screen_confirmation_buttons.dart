
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class VerificationScreenConfirmationButtons extends ConsumerWidget {
  const VerificationScreenConfirmationButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 24,
      children: [
        CustomButtonWidget(
          text: 'confirm'.tr(),
          onTap: () {},
          isFiled: true,
          height: 50,
          width: double.infinity,
          backgroundColor: AppColors.primary,
          radius: 10,
        ),
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