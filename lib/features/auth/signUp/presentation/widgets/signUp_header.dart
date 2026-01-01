import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      spacing: 20,
      children: [
        Text(
          'signUp'.tr(),
          textAlign: TextAlign.center,
          style: textTheme.headlineLarge!.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'signUp_desc'.tr(),
          textAlign: TextAlign.center,
          style: textTheme.displaySmall!.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
