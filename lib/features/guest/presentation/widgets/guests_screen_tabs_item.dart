import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/guest/presentation/controller/guest_ui_controller.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class GuestsScreenTabsItem extends ConsumerWidget {
  const GuestsScreenTabsItem({
    super.key,
    required this.index,
    required this.tabIndex,
    required this.title,
  });

  final int index, tabIndex;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(guestUiControllerProvider.notifier).changIndex(tabIndex);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 4),
        decoration: index == tabIndex
            ? BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(32),
              )
            : null,
        child: Text(
          title,
          style: AppTextStyle.rubikSemiBold14.copyWith(
            color: index == tabIndex ? AppColors.white : AppColors.primary,
          ),
        ),
      ),
    );
  }
}
