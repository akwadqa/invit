
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SelectPackageButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  const SelectPackageButton(
      {super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? AppColors.primary : AppColors.buttonBackground,
        minimumSize: const Size(243, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        "Select $title",
        style: AppTextStyle.rubikMedium18
            .copyWith(color: isSelected ? AppColors.white : AppColors.black),
      ),
    );
  }
}
