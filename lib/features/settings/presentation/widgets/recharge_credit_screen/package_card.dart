
import 'package:flutter/material.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/best_value_budge.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/feature_item.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/select_package_button.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class PackageCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final bool isSelected;
  final bool isBestValue;

  const PackageCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    this.isSelected = false,
    this.isBestValue = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: isSelected ? AppColors.primary : AppColors.lightGray),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: AppTextStyle.rubikSemiBold18),
                  Text(price, style: AppTextStyle.rubikSemiBold18),
                ],
              ),
              15.verticalSpace,
              ...features.map((f) => FeatureItem(text: f)).toList(),
              15.verticalSpace,
              SelectPackageButton(title: title, isSelected: isSelected),
            ],
          ),
        ),
        if (isBestValue) const BestValueBadge(),
      ],
    );
  }
}
