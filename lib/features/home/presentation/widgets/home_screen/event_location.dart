
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventLocation extends StatelessWidget {
  const EventLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Assets.icons.locationIc.svg(),
        Text(
          'Riffa Halls Hall No. 15',
          style:
              AppTextStyle.rubikRegular12.copyWith(color: AppColors.textDart),
        )
      ],
    );
  }
}
