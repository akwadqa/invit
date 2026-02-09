import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/info_cards_row.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/main_balance_card.dart';
import 'package:invit/features/settings/presentation/widgets/recharge_credit_screen/package_list.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../../gen/assets.gen.dart';

class RechargeCreditsScreen extends StatelessWidget {
  const RechargeCreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomDeafultAppbar(title: 'recharge_credits'.tr()),
      body: _RechargeCreditsScreenContent(),
    );
  }
}

class _RechargeCreditsScreenContent extends StatelessWidget {
  const _RechargeCreditsScreenContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.verticalSpace,
          const MainBalanceCard(),
          const InfoCardsRow(),
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'payment'.tr(),
                style: AppTextStyle.rubikSemiBold18,
              ),
              Text(
                "chose_package".tr(),
                style: AppTextStyle.rubikRegular14,
              ),
            ],
          ),
          const PackageList(),
        ],
      ),
    );
  }
}

