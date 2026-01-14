import 'package:flutter/material.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_item_widget.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import '../widgets/events_header.dart';
import '../widgets/section_title.dart';
import '../widgets/event_card.dart';

class AllEventsScreen extends StatelessWidget {
  AllEventsScreen({super.key});
  final events = [
    EventModel(
        occasionId: "occasionId",
        title: "title",
        type: "type",
        date: "date",
        time: "time",
        mapLink: "mapLink",
        imageUrl: "/files/event_image_20251221172218_test.jpg",
        workflowState: "workflowState",
        isFeatured: 0,
        status: "status",
        role: "role"),
    EventModel(
        occasionId: "occasionId",
        title: "title",
        type: "type",
        date: "date",
        time: "time",
        mapLink: "mapLink",
        imageUrl: "/files/event_image_20251221172218_test.jpg",
        workflowState: "workflowState",
        isFeatured: 0,
        status: "status",
        role: "role"),
    EventModel(
        occasionId: "occasionId",
        title: "title",
        type: "type",
        date: "date",
        time: "time",
        mapLink: "mapLink",
        imageUrl: "/files/event_image_20251221172218_test.jpg",
        workflowState: "workflowState",
        isFeatured: 0,
        status: "status",
        role: "role"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          EventsHeader(),
          // CompanyTitle(),

          SectionTitle(
            title: "Akwad",
            count: "programming",
          ),
          const Divider(
            height: 1,
            color: AppColors.grayBorder,
          ),
          SectionTitle(
            title: "All Events",
            count: "30",
          ),

          // Expanded(
          //   child: ListView(
          //     padding: const EdgeInsets.symmetric(horizontal: 16),
          //     children:  [
          //       EventCard(
          //         date: "10\nOct",
          //         title: "Nour's Wedding",
          //         category: "Wedding",
          //         location: "Riffa Halls Hall No. 15",
          //         imageUrl: Assets.images.allEventImage.path ,
          //       ),
          //       EventCard(
          //         date: "20\nOct",
          //         title: "Business Dinner",
          //         category: "Dinner",
          //         location: "Riffa Halls Hall No. 15",
          //         imageUrl: Assets.images.allEventImage.path,
          //       ),
          //       EventCard(
          //         date: "31\nMay",
          //         title: "Engagement Party",
          //         category: "Party",
          //         location: "Riffa Halls Hall No. 15",
          //         imageUrl: Assets.images.allEventImage.path,
          //       ),
          //     ],
          //   ),
          // ),

          Expanded(
            child: ListView.separated(
              // scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => 35.verticalSpace,
              itemCount: events.length,
              itemBuilder: (context, index) {
                return EventItemWidget(event: events[index])
                    .symmetricPadding(horizontal:  12);
              },
            ),
          ),
        ],
      ),
    );
  }
}
