
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EmptyNotificationsWidget extends StatelessWidget {
  const EmptyNotificationsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      children: [
        SizedBox(),
        Assets.images.emptyNotificationsImage.svg(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: context.tr('ops'),
                style: AppTextStyle.rubikSemiBold18
                    .copyWith(color: AppColors.primary),
              ),
              TextSpan(
                text: context.tr('no_notifications'),
                style: AppTextStyle.rubikSemiBold18,
              ),
            ],
          ),
        ),
      
      ],
    );
  }
}
