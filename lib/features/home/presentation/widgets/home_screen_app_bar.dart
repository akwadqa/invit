import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(end: 22,start: 22, top: 60),
      child: Row(
        children: [
          Text(
            'welcome'.tr(),
            style:
                AppTextStyle.rubikSemiBold16.copyWith(color: AppColors.primary),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              context.goNamed(AppRoutes.notificationScreen);
            },
            child: Container(
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
            ),
          )
        ],
      ),
    );
  }
}
