
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventOwnerName extends StatelessWidget {
  final String? owner;
  const EventOwnerName({
    super.key, required this.owner,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppColors.black.withValues(alpha: .25), blurRadius: 4)
          ]),
          child: ClipOval(
            child: Assets.icons.appIcon.image(width: 14),
          ),
        ),
        Text(
          owner??'Qatar University',
          style: AppTextStyle.rubikRegular12.copyWith(color: AppColors.gray02),
        )
      ],
    );
  }
}
