
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class FeatureItem extends StatelessWidget {
  final String text;
  const FeatureItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle,
              color: AppColors.confirmGuest, size: 18),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.6,
            child: Text(text,
                style: AppTextStyle.rubikRegular16
                    .copyWith(color: AppColors.textGrey)),
          ),
        ],
      ),
    );
  }
}
