import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/payment/presentation/widgets/small_info_card.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Expanded(
          child: SmallInfoCard(
            title: "available_cards".tr(),
            value: "0 Cards",
            bgColor: AppColors.softBlue,
            icon: Assets.icons.availableCardsIc,
          ),
        ),
        Expanded(
          child: SmallInfoCard(
            title: "consumed".tr(),
            value: "365 Cards",
            bgColor: AppColors.softOrange,
            icon: Assets.icons.consumedIs,
          ),
        ),
      ],
    );
  }
}
