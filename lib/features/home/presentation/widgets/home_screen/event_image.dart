
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventImage extends StatelessWidget {
  const EventImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(5),
      child: SizedBox(
        width: double.infinity,
        height: 111,
        child: Stack(
          children: [
            //? Image :
            Assets.images.allEventImage
                .image(width: double.infinity, fit: BoxFit.cover),

            //? Date :
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                decoration: BoxDecoration(
                  color: AppColors.background.withValues(alpha: .8),
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
    );
  }
}
