import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import '../../domain/model/guest_report_model.dart';
import 'event_details_report_chart.dart';

class EventDetailsReportCard extends StatelessWidget {
  final GuestReportModel report;
  final String id;

  const EventDetailsReportCard({
    super.key,
    required this.report,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          'invitation_report'.tr(),
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.primary),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    EventDetailsReportChart(report: report),
                    _Legend(report: report),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Legend extends StatelessWidget {
  final GuestReportModel report;

  const _Legend({required this.report});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _item('${report.confirmed} ${("sent".tr())}', AppColors.green),
        _item('${report.pending} ${("queued".tr())} ', AppColors.dinnerTop),
        _item('${report.failed} ${("failed".tr())}', AppColors.darkRed),
        _item(
          '${report.declined} ${("declined".tr())}',
          AppColors.secondPrimary,
        ),
        _item('${report.scannedCount} ${("scanned".tr())}', AppColors.primary),
        _item(
          '${report.notSent} ${("not_sent".tr())}',
          AppColors.graduationIcon,
        ),
        // _item(Colors.green, '${report.confirmed} Sent'),
        // _item(Colors.orange, '${report.pending} Queued'),
        // _item(Colors.red, '${report.failed} Failed'),
        // _item(Colors.blue, '${report.totalInvitees} Total'),
      ],
    );
  }

  Widget _item(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        spacing: 4,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          Text(text),
        ],
      ),
    );
  }
}
