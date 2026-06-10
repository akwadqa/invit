import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventTitle extends StatelessWidget {
  final String? title;
  final String? type;
  const EventTitle({
    super.key,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //? Title :
        Expanded(
          child: Text(
            title ?? 'Guest graduated',
            style: AppTextStyle.rubikMedium16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        8.horizontalSpace,

        //? Type :
        Skeleton.ignore(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: AppColors.primary),
            child: Text(type ?? 'graduation'.tr(),
                style: AppTextStyle.rubikMedium14
                    .copyWith(color: AppColors.background)),
          ),
        ),
      ],
    );
  }
}
