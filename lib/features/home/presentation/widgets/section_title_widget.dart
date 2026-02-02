import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'all_events'.tr(),
                      style: AppTextStyle.rubikSemiBold18
                          .copyWith(color: AppColors.primary)),
                  GestureDetector(
                    onTap: () => context.push(AppRoutes.allEventsSecreen),
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => AllEventsScreen(),
                    // )),
                    child: Text('view_all'.tr(),
                        style: AppTextStyle.rubikMedium16
                            .copyWith(color: AppColors.secondPrimary)),
                  ),
                ],
              );
  }
}