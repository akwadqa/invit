import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/payment/presentation/controller/payment_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SelectPackageButton extends ConsumerWidget {
  final String title;
  final bool isSelected;
  const SelectPackageButton({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(paymentControllerProvider.notifier).getPaymentUrl(title, 'en');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected
            ? AppColors.primary
            : AppColors.buttonBackground,
        minimumSize: const Size(243, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        "${'select'.tr()} $title",
        style: AppTextStyle.rubikMedium18.copyWith(
          color: isSelected ? AppColors.white : AppColors.black,
        ),
      ),
    );
  }
}
