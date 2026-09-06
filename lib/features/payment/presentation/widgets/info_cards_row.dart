import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/payment/presentation/widgets/small_info_card.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class InfoCardsRow extends ConsumerWidget {
  const InfoCardsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total =
        ref.watch(homeControllerProvider).value?.remainingBalance ?? 0;
    final consumed =
        ref.watch(homeControllerProvider).value?.consumingBalance ?? 0;
    return Row(
      spacing: 15,
      children: [
        Expanded(
          child: SmallInfoCard(
            title: "available_cards".tr(),
            value: "$total ${"cards".tr()}",
            bgColor: AppColors.softBlue,
            icon: Assets.icons.availableCardsIc,
          ),
        ),
        Expanded(
          child: SmallInfoCard(
            title: "consumed".tr(),
            value: "$consumed ${"cards".tr()}",
            bgColor: AppColors.softOrange,
            icon: Assets.icons.consumedIs,
          ),
        ),
      ],
    );
  }
}
