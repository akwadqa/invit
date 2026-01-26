import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EmptyHomeData extends StatelessWidget {
  const EmptyHomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 25,
      children: [
        40.verticalSpace,
        Assets.images.invitationCreateIm.image(),
        Text("no_invitations_yet".tr(),style: AppTextStyle.bodysmallSemibold,),
        Text("start_creating_invitations".tr(),style: AppTextStyle.bodysmallSemibold,),
        CustomButtonWidget(
              text: 'create_event'.tr(),
              onTap: () => context.push(AppRoutes.createEventScreen),
              isFiled: true,
              height: 50,
              width: double.infinity,
              backgroundColor: AppColors.primary,
              radius: 10,
            ).symmetricPadding(horizontal: 20),
            20.verticalSpace,
      ],
    );
  }
}