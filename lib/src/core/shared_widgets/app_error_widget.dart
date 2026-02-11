import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
  final String? errorMsg;
  final void Function()? onTap;

  const AppErrorWidget({super.key, this.errorMsg, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.emptyMessages.image(),
          30.verticalSpace,
          Text(
            context.tr(errorMsg ?? "Unkown error occured"),
            textAlign: TextAlign.center,
            style: AppTextStyle.rubikSemiBold18,
          ),
          30.verticalSpace,
          if (onTap != null)
            CustomButtonWidget(
              text: "retry".tr(),
              onTap: onTap!,
              isFiled: true,
              backgroundColor: AppColors.primary,
              radius: 8,
              height: 45,
              width: double.infinity,
            ).symmetricPadding(horizontal: 22),
        ],
      ),
    );
  }
}
