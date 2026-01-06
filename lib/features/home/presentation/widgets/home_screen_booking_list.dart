import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class HomeScreenBookingList extends StatelessWidget {
  const HomeScreenBookingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => 12.horizontalSpace,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          width: 331,
          height: 155,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(Assets.images.bookImage.path),
                fit: BoxFit.cover,
              )),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.black.withValues(alpha: .5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 18,
              children: [
                Text(
                  'Book a hall with 20% discount'.tr(),
                ),
                CustomButtonWidget(
                    text: 'Booking now',
                    onTap: () {},
                    radius: 0,
                    isFiled: false,
                    backgroundColor: AppColors.background,
                    height: 31,
                    width: 109)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
