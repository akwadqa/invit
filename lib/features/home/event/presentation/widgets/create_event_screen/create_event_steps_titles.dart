
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class CreateEventsStepsTitles extends StatelessWidget {
  const CreateEventsStepsTitles({
    super.key,
    required this.current,
  });
  final int current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 70,
          child: Text(
            'event_information'.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.cairoBold12.copyWith(color: AppColors.primary),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            'invitees'.tr(),
            textAlign: TextAlign.center,
            style: current == 2 || current == 3
                ? AppTextStyle.cairoBold12.copyWith(color: AppColors.primary)
                : AppTextStyle.cairoRegular12.copyWith(color: AppColors.black),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            'message_preview'.tr(),
            textAlign: TextAlign.center,
            style: current == 3
                ? AppTextStyle.cairoBold12.copyWith(color: AppColors.primary)
                : AppTextStyle.cairoRegular12.copyWith(color: AppColors.black),
          ),
        )
      ],
    );
  }
}

