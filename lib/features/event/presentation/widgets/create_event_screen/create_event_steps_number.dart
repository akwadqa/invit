
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class CreateEventStepsNumber extends StatelessWidget {
  const CreateEventStepsNumber({
    super.key,
    required this.title,
    required this.isPassed,
  });
  final String title;
  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        border: isPassed ? null : Border.all(color: AppColors.primary),
        shape: BoxShape.circle,
        gradient: isPassed
            ? LinearGradient(
                colors: [
                  AppColors.primary,
                  AppColors.secondPrimary,
                ],
              )
            : null,
      ),
      child: Text(
        title,
        style: AppTextStyle.cairoRegular20.copyWith(
            color: isPassed ? AppColors.background : AppColors.primary),
      ),
    );
  }
}
