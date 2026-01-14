import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String count;

  const SectionTitle({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:AppTextStyle.rubikSemiBold18.copyWith(color: AppColors.primary)
          ),
          Text(
           count,
            style: AppTextStyle.rubikMedium14.copyWith(color: AppColors.gray),
          ),
        ],
      ),
    );
  }
}
class CompanyTitle extends StatelessWidget {
  const CompanyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Akwad",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3B41C5),
            ),
          ),
          Text(
            "Akwad Programming",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
