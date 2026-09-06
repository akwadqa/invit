import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/featured_events/presentation/controller/featured_event_controller.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_item_widget.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../widgets/events_header.dart';
import '../widgets/section_title.dart';
import '../widgets/event_card.dart';

class AllEventsScreen extends ConsumerWidget {
  final String? eventType;
  const AllEventsScreen({super.key, this.eventType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventsAsync = ref.watch(featuredEventControllerProvider());
    return eventsAsync.when(
      data: (data) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              EventsHeader(),

              // CompanyTitle(),
              SectionTitle(title: "Akwad", count: "programming"),
              const Divider(height: 1, color: AppColors.grayBorder),
              SectionTitle(
                title: eventType ?? "all_events".tr(),
                count: data.events.length.toString(),
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
                  itemCount: data.events.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => context.push(
                        AppRoutes.eventDetails,
                        extra: data.events[index].eventId,
                      ),

                      child: EventItemWidget(
                        event: data.events[index],
                      ).symmetricPadding(horizontal: 12),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) => AppErrorWidget(
        onTap: () =>
            ref.read(homeControllerProvider.notifier).getHomeData(page: 1),
      ),
      loading: () => _buildSkelton(),
    );
  }

  Skeletonizer _buildSkelton() {
    final defaultEvents = List.generate(2, (_) => EventModel.placeholder());
    return Skeletonizer(
      enabled: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            EventsHeader(),

            // CompanyTitle(),
            SectionTitle(title: "Akwad", count: "programming"),
            const Divider(height: 1, color: AppColors.grayBorder),
            SectionTitle(title: "All Events", count: "30"),

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
                itemCount: defaultEvents.length,
                itemBuilder: (context, index) {
                  return EventItemWidget(
                    event: defaultEvents[index],
                  ).symmetricPadding(horizontal: 12);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
