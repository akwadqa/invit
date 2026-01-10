
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_item_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class HomeScreenAllEvents extends StatelessWidget {
  const HomeScreenAllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'all_events'.tr(),
          style:
              AppTextStyle.rubikSemiBold18.copyWith(color: AppColors.primary),
        ),
        SizedBox(
          // width: 191,
          height: 220,
          child: ListView.separated(
            separatorBuilder: (context, index) => 18.horizontalSpace,
            itemCount: 6,
            itemBuilder: (context, index) => EventItemWidget(),
            scrollDirection: Axis.horizontal,
            // children: [
            //   EventItemWidget(),
            // ],
          ),
        ),
      ],
    );
  }
}
