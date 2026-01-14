import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'app_text_styles.dart';

class SettingsSectionTitle extends StatelessWidget {
  final String title;

  const SettingsSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Container(
      height: 50,
      width: double.infinity,
      color: AppColors.lightGray,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical:  12),
      child: Text(title, style: textTheme.displayLarge!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 18),));
  }
}
