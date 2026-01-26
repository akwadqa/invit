import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event_details/domain/model/guest_report_model.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import '../../../../src/core/shared_widgets/custom_appbar.dart';
import '../../domain/model/event_details_model.dart';
import '../widgets/event_details_header_card.dart';
import '../widgets/event_details_report_card.dart';
import '../widgets/guest_list_section.dart';

class EventDetailsScreen extends ConsumerWidget {
  final String ocassionId;

  const EventDetailsScreen({
    super.key,
    required this.ocassionId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventDetailsAsync =
        ref.watch(eventDetailsControllerProvider(ocassionId: ocassionId));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: CustomAppbar(
            title: context.tr('event_details'),
            // withBackButton: false,
          ),
        ),
        body: eventDetailsAsync.when(
          data: (EventDetailsModel data) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (data.guestReport != null)
                  EventDetailsReportCard(
                      report: data.guestReport!, id: ocassionId),
                16.verticalSpace,
                EventDetailsHeaderCard(event: data),
                20.verticalSpace,
                GuestListSection(guests: data.guests),
                20.verticalSpace,
                EventDetailsFooter(
                  id: ocassionId,
                  report: data.guestReport!,
                ),
              ],
            );
          },
          error: (Object error, StackTrace stackTrace) => AppErrorWidget(),
          loading: () => AppLoader(),
        ));
  }
}

class EventDetailsFooter extends StatelessWidget {
  const EventDetailsFooter({
    super.key,
    required this.id,
    required this.report,
  });
  final String id;
  final GuestReportModel report;

  @override
  Widget build(BuildContext context) {
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
        )),
        if (report.failed > 0)
          Expanded(
              child: CustomButtonWidget(
            text: "retry_failed".tr(),
            onTap: () {},
            isFiled: true,
            backgroundColor: AppColors.primary,
            radius: 8,
            height: 45,
            width: double.infinity,
          )),
      ],
    );
  }
}
