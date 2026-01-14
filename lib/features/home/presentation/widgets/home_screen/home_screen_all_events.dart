import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/featured_events/presentation/screens/all_events_screen.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_item_widget.dart';
import 'package:invit/features/invitation_type/presentation/screens/invitation_types_screen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreenAllEvents extends ConsumerWidget {
  const HomeScreenAllEvents({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeAsync = ref.watch(homeControllerProvider);

    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('all_events'.tr(),
                style: AppTextStyle.rubikSemiBold18
                    .copyWith(color: AppColors.primary)),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AllEventsScreen(),
              )),
              child: Text('view_all'.tr(),
                  style: AppTextStyle.rubikMedium16
                      .copyWith(color: AppColors.secondPrimary)),
            ),
          ],
        ).symmetricPadding(horizontal: 20),
   
        SizedBox(
          height: 220,
          child: homeAsync.when(
            loading: () => _buildSkeleton(),
            error: (e, _) => const SizedBox(),
            data: (data) {
              final events = data.events;

              if (events.isEmpty) {
                return const SizedBox();
              }

              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => 10.horizontalSpace,
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventItemWidget(event: events[index])
                      .onlyPadding(start: 8);
                },
              );
            },
          ),
        ),
      ],
    );
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
