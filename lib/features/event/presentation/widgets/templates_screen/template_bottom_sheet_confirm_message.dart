import 'package:flutter/material.dart';
import 'package:invit/features/event/domain/model/template%20model/template_model.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class TemplateBottomSheetConfirmMessage extends StatelessWidget {
  const TemplateBottomSheetConfirmMessage({
    super.key,
    required this.linkedTemplate,
  });

  final LinkedTemplate linkedTemplate;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: Assets.images.confirmBackgroundImage.image()),
        Positioned(
          top: 19,
          left: 19,
          right: 19,
          child: Container(
            // height: 100,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Assets.images.confitmTemplateQr.image().symmetricPadding(
                  horizontal: 16,
                  vertical: 16,
                ),

                // Text(
                //   'شكراً هديل  لتأكيد حضورك لـ: \n حفل زفاف :روان  \n تذكرة الدخول مرفقة مع هذه الرسالة \n عدد المقاعد المخصصة لك: 3 مقاعد',

                //   style: AppTextStyle.rubikMedium14,
                // ),
                Text(
                  linkedTemplate.message ?? '',

                  style: AppTextStyle.rubikMedium14,
                  // textAlign: TextAlign.center,
                ).symmetricPadding(horizontal: 16),
                14.verticalSpace,
                // Text(
                //   'الرجاء إظهار هذه التذكرة عند الوصول إلى القاعة!',
                //   style: AppTextStyle.rubikRegular12.copyWith(
                //     color: AppColors.gray02,
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10:30 PM',
                      style: AppTextStyle.rubikRegular10.copyWith(
                        color: AppColors.gray02,
                      ),
                    ),
                    Text(
                      'invite',
                      style: AppTextStyle.rubikRegular10.copyWith(
                        color: AppColors.gray02,
                      ),
                    ),
                  ],
                ).symmetricPadding(horizontal: 8, vertical: 12),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
