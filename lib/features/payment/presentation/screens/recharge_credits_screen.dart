import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/payment/presentation/controller/payment_controller.dart';
import 'package:invit/features/payment/presentation/widgets/info_cards_row.dart';
import 'package:invit/features/payment/presentation/widgets/main_balance_card.dart';
import 'package:invit/features/payment/presentation/widgets/package_list.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
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
      appBar: CustomDeafultAppbar(title: 'pricing_services'.tr()),
      body: _RechargeCreditsScreenContent(),
    );
  }
}

class _RechargeCreditsScreenContent extends ConsumerWidget {
  const _RechargeCreditsScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
        paymentControllerProvider.select((val) => val.value!.paymentLink),
        (previous, next) {
      if (next is AsyncLoading) {
        // Show loading indicator
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AppLoader(),
        );
      }

      if (next is AsyncData) {
        context.pop();
        context.push(AppRoutes.webPaymentScreen, extra: next!.value);
      }

      if (next is AsyncError) {
        context.pop();
        showErrorDialog(
            context, 'Failed to get payment link. Please try again.');
      }
    });

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.verticalSpace,
          // const MainBalanceCard(),
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
