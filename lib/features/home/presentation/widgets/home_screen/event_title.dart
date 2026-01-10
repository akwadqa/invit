
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventTitle extends StatelessWidget {
  const EventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //? Title :
        Expanded(
          child: Text(
            'Hadeel graduated',
            style: AppTextStyle.rubikMedium12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        8.horizontalSpace,

        //? Type :
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.primary),
          child: Text('graduation'.tr(),
              style: AppTextStyle.rubikRegular10
                  .copyWith(color: AppColors.background)),
        ),
      ],
    );
  }
}