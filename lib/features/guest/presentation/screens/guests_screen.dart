import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event_details/domain/model/event_details_model.dart';
import 'package:invit/features/event_details/domain/model/guest_model.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/features/guest/presentation/controller/guest_ui_controller.dart';
import 'package:invit/features/guest/presentation/widgets/guests_screen_tab_bar.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class GuestsScreen extends ConsumerStatefulWidget {
  final String id;
  const GuestsScreen({super.key, required this.id});

  @override
  ConsumerState<GuestsScreen> createState() => _GuestsScreenState();
}

class _GuestsScreenState extends ConsumerState<GuestsScreen> {
  @override
  void initState() {
    Future(() {
      // ref.read(homeControllerProvider.notifier).getEventDetails(widget.id);
    });
    super.initState();
  }

  // void _openBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (context) => AddGuestManuallBotomSheet(),
  //   );
  // }

  List<String?> rsvpStatusesFromIndex(int index) {
    switch (index) {
      case 0:
        return [];
      case 1:
        return ['Confirmed'];
      case 2:
        return ['Declined'];
      case 3:
        return ['Pending', 'Not Sent', null];
      case 4:
        return ['Failed'];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(guestUiControllerProvider).index;

    // final controller = ref.watch(
    //   homeControllerProvider.select(
    //     (val) => val.value!.occasionModel ?? AsyncLoading(),
    //   ),
    // );0
    final controller =
        ref.watch(eventDetailsControllerProvider(ocassionId: widget.id));
    // ref.listen(
    //   guestsControllerProvider.select((val) => val.value!.deleteGuestResponse),
    //   (prev, next) {
    //     if (next is AsyncLoading) {
    //       AppAlert.showLoadingDialog(context);
    //     }

    //     if (next is AsyncData) {
    //       context.pop();
    //       context.pop();
    //       ref.read(homeControllerProvider.notifier).getEventDetails(widget.id);
    //       AppToast.doneToast("successfullyCompleted".tr());
    //     }
    //     if (next is AsyncError) {
    //       context.pop();
    //       AppToast.errorToast(next.error.toString());
    //     }
    //   },
    // );

    // final event = ref.watch(homeControllerProvider).value!.occasionModel?.value;
    return Scaffold(
      appBar: CustomDeafultAppbar(
        title: context.tr('all_guests'),
        // actionButton: event?.status == 'Draft'
        //     ? GestureDetector(
        //         onTap: () {
        //           context.push(Routes.guestList, extra: event?.occasionId);
        //         },
        //         child: Assets.icons.addContactIc.svg(width: 30.w),
        //       )
        //     : null,
      ),
      body: Column(
        spacing: 16,
        children: [
          // HomePageSearchField(
          //   hint: context.tr('search'),
          // ).symmetricPadding(horizontal: 22.w, vertical: 23.h),
          GuestsScreenTabBar(),

          controller.when(
            data: (data) {
              return Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: KeyedSubtree(
                    key: ValueKey(index),
                    child: _buildBody(data, index),
                  ),
                ),
              );
            },
            error: (e, st) => AppErrorWidget(
              onTap: () {
                // ref
                //     .read(homeControllerProvider.notifier)
                //     .getEventDetails(widget.id);
              },
            ),
            loading: () => AppLoader(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(EventDetailsModel event, int index) {
    final statuses = rsvpStatusesFromIndex(index);

    final filteredGuests = statuses.isEmpty
        ? event.guests
        : event.guests?.where((g) => statuses.contains(g.rsvpStatus)).toList();

    return filteredGuests?.isNotEmpty ?? false
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: .25),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(color: AppColors.lightGray02.withValues(alpha: .4)),
              itemBuilder: (context, index) => GuestsScreenGuestItem(
                index: index,
                guest: filteredGuests?[index],
                isConfirmed: event.status == 'Confirmed',
              ),
              itemCount: filteredGuests?.length ?? 0,
            ),
          )
        : SizedBox();
    // : Center(child: Assets.icons.emptyIc.svg());
  }
}

class GuestsScreenGuestItem extends ConsumerWidget {
  const GuestsScreenGuestItem({
    super.key,
    required this.index,
    required this.guest,
    required this.isConfirmed,
  });

  final int index;
  final bool isConfirmed;
  final GuestModel? guest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(guestUiControllerProvider).index;

    return ListTile(
      // onTap: !isConfirmed
      //     ? () {
      //         showModalBottomSheet(
      //           context: context,
      //           isScrollControlled: true,
      //           builder: (context) =>
      //               UpdateGuestNameBottomSheet(guestModel: guest!),
      //         );
      //       }
      //     : null,
      // leading: !isConfirmed
      //     ? GestureDetector(
      //         onTap: () {
      //           AppAlert.showGlobalDialog(
      //             context: context,
      //             title: context.tr('deleteGuest'),
      //             onSubmit: () {
      //               ref.read(guestsControllerProvider.notifier).deleteGuest(
      //                 guests: [guest!],
      //                 occasionId: ref
      //                     .read(homeControllerProvider)
      //                     .value!
      //                     .occasionModel!
      //                     .value!
      //                     .occasionId!,
      //               );
      //             },
      //             text: Text.rich(
      //               textAlign: TextAlign.center,
      //               TextSpan(
      //                 children: [
      //                   TextSpan(
      //                     text: context.tr('sureRemoveContact1'),
      //                     style: AppTextStyle.rubikRegular14.copyWith(
      //                       color: AppColors.primary,
      //                     ),
      //                   ),
      //                   TextSpan(
      //                     text: guest?.fullName,
      //                     style: AppTextStyle.rubikMedium14.copyWith(
      //                       color: AppColors.primary,
      //                     ),
      //                   ),
      //                   TextSpan(
      //                     text: context.tr('sureRemoveContact2'),
      //                     style: AppTextStyle.rubikRegular14.copyWith(
      //                       color: AppColors.primary,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           );
      //         },
      //         child: Assets.icons.xGuestIc.svg(),
      //       )
      //     : null,
      leading: Container(
          width: 26,
          height: 26,
          padding: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.guestName,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: .25),
                  blurRadius: 4,
                )
              ]),
          child: FittedBox(
            child: Text(
              guest?.fullName?.substring(0, 2).toUpperCase() ?? 'NA',
              style:
                  AppTextStyle.rubikRegular12.copyWith(color: AppColors.white),
            ),
          )),
      title: Text(
        guest?.fullName ?? 'name',
        style: AppTextStyle.rubikRegular16.copyWith(color: AppColors.black),
      ),
      trailing: tabIndex == 0
          ? Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: guest!.rsvpStatus == 'Confirmed'
                    ? AppColors.confirmGuest
                    : guest!.rsvpStatus == 'Pending' ||
                            guest!.rsvpStatus == 'Not Sent' ||
                            guest!.rsvpStatus == null
                        ? AppColors.waitingGuest
                        : AppColors.noticeRed,
                borderRadius: BorderRadius.circular(32),
              ),
              child: guest!.rsvpStatus == 'Confirmed'
                  ? Assets.icons.confirmGuestIc.svg()
                  : guest!.rsvpStatus == 'Pending' ||
                          guest!.rsvpStatus == 'Not Sent' ||
                          guest!.rsvpStatus == null
                      ? Assets.icons.waitingGuestIc.svg()
                      : Assets.icons.failedGuestIc.svg(),
              // child: Text(
              //   guest!.rsvpStatus ?? 'Not Sent',
              //   style: AppTextStyle.rubikRegular14.copyWith(
              //     color: AppColors.white,
              //   ),
              // ),
            )
          : null,
    );
  }
}
