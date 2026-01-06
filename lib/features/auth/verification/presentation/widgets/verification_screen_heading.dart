
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class VerificationScreenHeading extends StatelessWidget {
  const VerificationScreenHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Text(
          'enterVerificationCode'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w900,
              ),
        ),
        Text(
          'we_sent_a_code_to'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              // color: AppColors.primary,
              // fontWeight: FontWeight.w900,
              ),
        ),
      ],
    );
  }
}
