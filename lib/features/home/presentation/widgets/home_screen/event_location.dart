
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventLocation extends StatelessWidget {
  final String? location;
  const EventLocation({
    super.key, this.location,
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
    ).onlyPadding(bottom: 8);
  }
}
