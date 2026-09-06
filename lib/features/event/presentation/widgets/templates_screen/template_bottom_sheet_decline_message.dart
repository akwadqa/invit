import 'package:flutter/material.dart';
import 'package:invit/features/event/domain/model/template%20model/template_model.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class TemplateBottomSheetDecloneMessage extends StatelessWidget {
  const TemplateBottomSheetDecloneMessage({
    super.key,
    required this.linkedTemplate,
  });
  final LinkedTemplate linkedTemplate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: Assets.images.declineTemplateBackground.image()),

        Positioned(
          top: 19,
          left: 19,
          right: 19,

          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                19.verticalSpace,
                // Text(
                //   'شكرًا يا هديل على ردّك 🌷 \n نأسف لأنكِ لن تتمكني من حضور  \n حفل زفاف روان \n  لكن وجودك معنا بالقلب دائمًا 🤍',

                //   style: AppTextStyle.rubikMedium14,
                // ),
                Text(
                  linkedTemplate.message ?? '',
                  style: AppTextStyle.rubikMedium14,
                ).symmetricPadding(horizontal: 16),
                // 19.verticalSpace,
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
