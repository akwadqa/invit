import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_item_widget.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreenAllEvents extends ConsumerWidget {
  final bool featuredEvent;
  const HomeScreenAllEvents({super.key, this.featuredEvent = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(
      homeControllerProvider.select(
        (state) => state.value?.events ??  List.generate(
  2,
  (_) => EventModel.placeholder(),
),
      ),
    );
    final featuredEvents = ref.watch(
      homeControllerProvider.select(
        (state) => state.value?.featuredEvents ?? const [],
      ),
    );
    final isLoading = ref.watch(
      homeControllerProvider.select(
        (state) => state.isLoading,
      ),
    );
    final emptyData = (featuredEvent ? featuredEvents.isEmpty : events.isEmpty && !isLoading);
    return emptyData
        ? SizedBox()
        : Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      featuredEvent ? 'featured_event'.tr() : 'all_events'.tr(),
                      style: AppTextStyle.rubikSemiBold18
                          .copyWith(color: AppColors.primary)),
                  GestureDetector(
                    onTap: () => context.push(AppRoutes.allEventsSecreen),
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => AllEventsScreen(),
                    // )),
                    child: Text('view_all'.tr(),
                        style: AppTextStyle.rubikMedium16
                            .copyWith(color: AppColors.secondPrimary)),
                  ),
                ],
              ),
              SizedBox(
                  height: 220,
                  child: isLoading
                      ? _buildSkeleton()
                      : ListView.separated(
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, index) =>
                              10.horizontalSpace,
                          itemCount: featuredEvent
                              ? featuredEvents.length
                              : events.length,
                          itemBuilder: (context, index) {
                            final ocassionId = featuredEvent
                                ? featuredEvents[index].occasionId
                                : events[index].occasionId;
                            return GestureDetector(
                              onTap: () => context.push(AppRoutes.eventDetails,
                                  extra: ocassionId),
                              child: EventItemWidget(
                                      event: featuredEvent
                                          ? featuredEvents[index]
                                          : events[index])
                                  .onlyPadding(start: 8),
                            );
                          },
                        )),
            ],
          ).symmetricPadding(horizontal: 12);
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      enabled: true,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => 10.horizontalSpace,
        itemCount: 4,
        itemBuilder: (context, index) =>
            const EventItemWidget().onlyPadding(start: 8),
      ),
    );
  }
}
