import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class HomeScreenInvitationType extends StatelessWidget {
  const HomeScreenInvitationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('invitation_type'.tr(),
            style: AppTextStyle.rubikSemiBold18
                .copyWith(color: AppColors.primary)),
        SizedBox(
          height: 124,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                    spacing: 12,
                    children: [
                      ClipOval(
                        child: Container(
                          width: 92,
                          height: 92,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withValues(alpha: .25),
                              blurRadius: 4,
                            )
                          ]),
                          child: Assets.images.inviteTypeImage
                              .image(fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        'Wedding',
                        style: AppTextStyle.rubikMedium14,
                      )
                    ],
                  ),
              separatorBuilder: (context, index) => 18.horizontalSpace,
              itemCount: 6),
        )
      ],
    );
  }
}
