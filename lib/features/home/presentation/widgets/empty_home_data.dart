import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EmptyHomeData extends ConsumerWidget {
  const EmptyHomeData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () =>
          ref.read(homeControllerProvider.notifier).getHomeData(page: 1),
      child: ListView(
        padding: EdgeInsets.zero,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // spacing: 25,
        children: [
          // 35.verticalSpace,
          Assets.images.invitationCreateIm.image(),
          25.verticalSpace,
          Text(
            "no_invitations_yet".tr(),
            style: AppTextStyle.rubikRegular18,
            textAlign: TextAlign.center,
          ),
          25.verticalSpace,

          Text(
            "start_creating_invitations".tr(),
            style: AppTextStyle.rubikRegular18,
            textAlign: TextAlign.center,
          ),
          25.verticalSpace,

          CustomButtonWidget(
            text: 'create_event'.tr(),
            onTap: () =>
                context.push(AppRoutes.invitationsSecreen, extra: true),
            isFiled: true,
            height: 50,
            style: AppTextStyle.rubikMedium18.copyWith(color: Colors.white),
            width: double.infinity,
            backgroundColor: AppColors.primary,
            radius: 10,
          ).symmetricPadding(horizontal: 20),
          20.verticalSpace,
        ],
      ),
    );
  }
}
