import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class CreateEventFooter extends StatelessWidget {
  const CreateEventFooter({
    super.key,
    required this.onContinue,
  });
  final void Function() onContinue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtonWidget(
          text: 'cancel'.tr(),
          onTap: () => context.pop(),
          isFiled: false,
          height: 48,
          radius: 10,
          style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.primary),
          width: 157,
          backgroundColor: AppColors.white,
        ),
        CustomButtonWidget(
          text: 'continue'.tr(),
          onTap: onContinue,
          isFiled: false,
          height: 48,
          radius: 10,
          style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
          width: 157,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
