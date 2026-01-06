import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_booking_list.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

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
    return Padding(
      padding: EdgeInsetsGeometry.directional(start: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          HomeScreenAppBar(),
          HomeScreenBookingList(),
          Text(
            'Invitation type'.tr(),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.primary),
          ),
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
                        Text('Wedding')
                      ],
                    ),
                separatorBuilder: (context, index) => 18.horizontalSpace,
                itemCount: 6),
          )
        ],
      ),
    );
  }
}
