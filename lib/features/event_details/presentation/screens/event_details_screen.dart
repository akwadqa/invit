import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
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
                EventDetailsHeaderCard(event: data),
                16.verticalSpace,
                if (data.guestReport != null)
                  EventDetailsReportCard(report: data.guestReport!),
               20.verticalSpace,
                GuestListSection(guests: data.guests),
              ],
            );
          },
          error: (Object error, StackTrace stackTrace) => AppErrorWidget(),
          loading: () => AppLoader(),
        ));
  }
}
