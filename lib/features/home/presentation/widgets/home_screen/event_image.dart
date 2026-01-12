
import 'package:flutter/material.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class EventImage extends StatelessWidget {
  final EventModel? event;

  const EventImage({super.key, this.event});


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
      // Image
            event?.imageUrl != null
                ? Image.network(
                    ServicesUrls.imageUrl + event!.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Assets.images.allEventImage.image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

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
                  _formatDate(event?.date),
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
   String _formatDate(String? date) {
    if (date == null || date.isEmpty) return '';

    final parsed = DateTime.tryParse(date);
    if (parsed == null) return '';

    return '${parsed.day}\n${_month(parsed.month)}';
  }

  String _month(int m) {
    const months = [
      'JAN','FEB','MAR','APR','MAY','JUN',
      'JUL','AUG','SEP','OCT','NOV','DEC'
    ];
    return months[m - 1];
  }

}
