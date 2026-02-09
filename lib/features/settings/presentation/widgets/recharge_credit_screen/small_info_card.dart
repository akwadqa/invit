
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SmallInfoCard extends StatelessWidget {
  final String title;
  final String value;
  final SvgGenImage icon;
  final Color bgColor;

  const SmallInfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withValues(alpha: .04), blurRadius: 6)
        ],
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: bgColor, borderRadius: BorderRadius.circular(4)),
            child: icon.svg(),
          ),
          Text(title,
              style: AppTextStyle.rubikRegular16
                  .copyWith(color: AppColors.textGrey)),
          Text(value, style: AppTextStyle.rubikMedium16),
        ],
      ),
    );
  }
}