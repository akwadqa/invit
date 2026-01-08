import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_booking_list.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_invitation_type.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeScreenContent());
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsGeometry.directional(start: 22),
      // crossAxisAlignment: CrossAxisAlignment.start,
      // spacing: 20,
      children: [
        HomeScreenAppBar(),
        20.verticalSpace,
        HomeScreenBookingList(),
        20.verticalSpace,
        HomeScreenInvitationType(),
        20.verticalSpace,
        Text(
          'all_events'.tr(),
          style:
              AppTextStyle.rubikSemiBold18.copyWith(color: AppColors.primary),
        ),
        SizedBox(
          width: 191,
          height: 206,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 210,
                height: 206,
                decoration: BoxDecoration(
                    color: AppColors.cardWhite,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  spacing: 12,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(5),
                      child: SizedBox(
                        width: double.infinity,
                        height: 111,
                        child: Stack(
                          children: [
                            //? Image :
                            Assets.images.allEventImage.image(
                                width: double.infinity, fit: BoxFit.cover),

                            //? Date :
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 1),
                                decoration: BoxDecoration(
                                  color: AppColors.background
                                      .withValues(alpha: .8),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  '10 \nOCT',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.rubikMedium10,
                                ),
                              ),
                            ),

                            //? Save icon :
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Assets.icons.saveEventIc.svg(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              //? Title :
                              Expanded(
                                child: Text(
                                  'Hadeel graduated',
                                  style: AppTextStyle.rubikMedium12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              8.horizontalSpace,

                              //? Type :
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color: AppColors.primary),
                                child: Text('graduation'.tr(),
                                    style: AppTextStyle.rubikRegular10
                                        .copyWith(color: AppColors.background)),
                              ),
                            ],
                          ),
                          Row(
                            children: [Assets.icons.appIcon.image()],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        140.verticalSpace
      ],
    );
  }
}
