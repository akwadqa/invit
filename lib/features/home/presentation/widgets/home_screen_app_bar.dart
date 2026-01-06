import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(end: 22, top: 60),
      child: Row(
        children: [
          Text(
            'welcome'.tr(),
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.primary, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Container(
            width: 30,
            height: 30,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.background,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.black.withValues(alpha: .25),
                      blurRadius: 4)
                ]),
            child: Assets.icons.notificationIc.svg(),
          )
        ],
      ),
    );
  }
}
