
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/payment/presentation/widgets/active_status_budge.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class MainBalanceCard extends StatelessWidget {
  const MainBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withValues(alpha: .04), blurRadius: 6)
        ],
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("available_cards".tr(),
              style: AppTextStyle.rubikMedium16
                  .copyWith(color: AppColors.textGrey)),
          Text("0 Cards", style: AppTextStyle.rubikSemiBold18),
          const ActiveStatusBadge(),
        ],
      ),
    );
  }
}
