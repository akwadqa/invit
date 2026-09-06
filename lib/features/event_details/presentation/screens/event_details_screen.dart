import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event_details/domain/model/guest_report_model.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import '../../../../src/core/shared_widgets/custom_appbar.dart';
import '../widgets/event_details_header_card.dart';
import '../widgets/event_details_report_card.dart';
import '../widgets/guest_list_section.dart';

class EventDetailsScreen extends ConsumerStatefulWidget {
  final String ocassionId;

  const EventDetailsScreen({super.key, required this.ocassionId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EventDetailsScreenState();
}

class _EventDetailsScreenState extends ConsumerState<EventDetailsScreen> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref
          .read(
            eventDetailsControllerProvider(
              ocassionId: widget.ocassionId,
            ).notifier,
          )
          .getEventDetails(ocassionId: widget.ocassionId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final eventDetailsAsync = ref.watch(
      eventDetailsControllerProvider(ocassionId: widget.ocassionId),
    );
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        if (context.canPop()) {
          context.pop();
        } else {
          context.go(AppRoutes.mainScreen);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: CustomDeafultAppbar(
            title: context.tr('event_details'),
            actionButton: eventDetailsAsync.whenOrNull(
              data: (data) {
                if (data.status == 'Draft') {
                  return GestureDetector(
                    onTap: () =>
                        context.push(AppRoutes.updateEventScreen, extra: data),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.cardWhite,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: AppColors.primary,
                        size: 20,
                      ),
                    ),
                  );
                }
              },
            ),
            // withBackButton: false,
          ),
        ),
        body: RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () => ref
              .read(
                eventDetailsControllerProvider(
                  ocassionId: widget.ocassionId,
                ).notifier,
              )
              .getEventDetails(ocassionId: widget.ocassionId),
          child: eventDetailsAsync.when(
            data: (EventModel data) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  if (data.guestReport != null)
                    EventDetailsReportCard(
                      report: data.guestReport!,
                      id: widget.ocassionId,
                    ),
                  16.verticalSpace,
                  EventDetailsHeaderCard(event: data),
                  20.verticalSpace,
                  GuestListSection(guests: data.guestList ?? []),
                  20.verticalSpace,
                  EventDetailsFooter(
                    id: widget.ocassionId,
                    report: data.guestReport!,
                    status: data.status!,
                  ),
                ],
              );
            },
            error: (Object error, StackTrace stackTrace) => AppErrorWidget(
              withBackButton: true,
              onTap: () => ref
                  .read(
                    eventDetailsControllerProvider(
                      ocassionId: widget.ocassionId,
                    ).notifier,
                  )
                  .getEventDetails(ocassionId: widget.ocassionId),
            ),
            loading: () => AppLoader(),
          ),
        ),
      ),
    );
  }
}

class EventDetailsFooter extends ConsumerWidget {
  const EventDetailsFooter({
    super.key,
    required this.id,
    required this.report,
    required this.status,
  });
  final String id;
  final String status;
  final GuestReportModel report;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //? For confirm event :
    ref.listen(
      createEventControllerProvider.select((val) => val.value!.confirmEvent),
      (previous, next) {
        if (next is AsyncLoading) {
          AppAlert.showLoadingDialog(context);
        } else if (next is AsyncData) {
          context.pop();
          ref
              .read(eventDetailsControllerProvider(ocassionId: id).notifier)
              .getEventDetails(ocassionId: id);
        } else if (next is AsyncError) {
          context.pop();
          showErrorDialog(context, next!.error.toString());
        }
      },
    );

    //? For retry failed invites :
    ref.listen(
      createEventControllerProvider.select((val) => val.value!.resendFailed),
      (previous, next) {
        if (next is AsyncLoading) {
          AppAlert.showLoadingDialog(context);
        } else if (next is AsyncData) {
          context.pop();
          ref
              .read(eventDetailsControllerProvider(ocassionId: id).notifier)
              .getEventDetails(ocassionId: id);
        } else if (next is AsyncError) {
          context.pop();
          showErrorDialog(context, next!.error.toString());
        }
      },
    );
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: CustomButtonWidget(
            text: "view_status".tr(),
            onTap: () => context.pushNamed(AppRoutes.guestsScreen, extra: id),
            color: AppColors.primary,
            backgroundColor: Colors.white,
            radius: 8,
            isFiled: false,
            height: 45,
            width: double.infinity,
          ),
        ),
        if (report.failed > 0)
          Expanded(
            child: CustomButtonWidget(
              text: "retry_failed".tr(),
              onTap: () {
                ref
                    .read(createEventControllerProvider.notifier)
                    .retryFailed(id);
              },
              isFiled: true,
              backgroundColor: AppColors.primary,
              radius: 8,
              height: 45,
              width: double.infinity,
            ),
          ),
        if (status == "Draft")
          Expanded(
            child: CustomButtonWidget(
              text: "confirm".tr(),
              onTap: () {
                ref
                    .read(createEventControllerProvider.notifier)
                    .confirmEvent(id);
              },
              isFiled: true,
              backgroundColor: AppColors.primary,
              radius: 8,
              height: 45,
              width: double.infinity,
            ),
          ),
      ],
    );
  }
}
