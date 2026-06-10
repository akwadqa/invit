import 'package:flutter/material.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../../../src/core/utils/functions/helper_methods.dart';

class EventImage extends StatelessWidget {
  final EventModel? event;

  const EventImage({super.key, this.event});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 160,
        child: Stack(
          children: [
            //? Image :
            // Image
            event?.imageUrl != null && (event?.imageUrl?.isNotEmpty ?? false)
                ? Image.network(
                    ServicesUrls.imageUrl + (event!.imageUrl ?? ''),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Assets.images.emptyImageEventImage.image(
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
            // : Container(
            //     width: double.infinity,
            //     height: double.infinity,
            //     color: AppColors.white,
            //     child: Icon(Icons.card_giftcard),
            // ),
            // : Assets.images.allEventImage.image(
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),

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
                  formatDate(event?.dateTime),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.rubikMedium10,
                ),
              ),
            ),

            //? Save icon :
            // Positioned(
            //   top: 10,
            //   right: 10,
            //   child: Assets.icons.saveEventIc.svg(),
            // ),
          ],
        ),
      ),
    );
  }
}
