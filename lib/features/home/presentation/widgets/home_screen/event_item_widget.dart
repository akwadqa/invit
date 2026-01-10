import 'package:flutter/material.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_details_section.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_image.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class EventItemWidget extends StatelessWidget {
  const EventItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 206,
      decoration: BoxDecoration(
          color: AppColors.cardWhite, borderRadius: BorderRadius.circular(5)),
      child: Column(
        spacing: 12,
        children: [EventImage(), EventDetailsSection()],
      ),
    );
  }
}
