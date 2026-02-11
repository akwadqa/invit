import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SuccessfullEventCreationScreen extends StatelessWidget {
  const SuccessfullEventCreationScreen({super.key, required this.occasionId});
  final String occasionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SuccessfullEventCreationScreenContent(occasionId),
    );
  }
}

class _SuccessfullEventCreationScreenContent extends StatelessWidget {
  final String occasionId;
  const _SuccessfullEventCreationScreenContent(this.occasionId);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          Text(
            'event_create_successful'.tr(),
            style: AppTextStyle.rubikSemiBold20.copyWith(
              color: AppColors.primary,
            ),
          ),
          Container(
            width: double.infinity,
            // height: 485,
            padding: EdgeInsets.symmetric(vertical: 36),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: .25),
                    blurRadius: 4,
                  )
                ]),
            child: Column(
              spacing: 31,
              children: [
                Assets.images.eventSuccessImage.image(),
                Text(
                  'invitation_sent'.tr(),
                  style: AppTextStyle.rubikSemiBold18,
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () => context.goNamed(AppRoutes.eventDetails,
                      extra: occasionId),
                  child: Text(
                    'view_invitation_status'.tr(),
                    style: AppTextStyle.rubikMedium14.copyWith(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.goNamed(AppRoutes.mainScreen),
                  child: Text(
                    'back_to_home'.tr(),
                    style: AppTextStyle.rubikMedium14.copyWith(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
