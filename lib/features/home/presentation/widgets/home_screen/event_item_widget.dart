import 'package:flutter/material.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_details_section.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_image.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class EventItemWidget extends StatelessWidget {
  final EventModel? event;

  const EventItemWidget({super.key, this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      // height: 206,
      
      decoration: BoxDecoration(
          boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6),
        ],
          color: AppColors.cardWhite, borderRadius: BorderRadius.circular(16
          
          )),
      child: Column(
        spacing: 12,
        children: [
          EventImage(event: event),
          EventDetailsSection(event: event),
        ],
      ),
    );
  }
}
