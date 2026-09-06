import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/settings/presentation/widgets/app_text_styles.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import '../../domain/model/guest_report_model.dart';

class EventDetailsReportChart extends StatelessWidget {
  final GuestReportModel report;

  EventDetailsReportChart({
    super.key,
    required this.report,
  });

  // final reporrto = GuestReportModel(
  //     confirmed: 9,
  //     declined: 3,
  //     scannedCount: 1,

  //     failed: 10,
  //     notSent: 2,
  //     pending: 2,
  //     totalInvitees: 27);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            curve: Curves.linear,
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 45,
              sections: _sections(),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${report.totalInvitees}',
                style: AppTextStyle.nunitoBold16,
              ),
              Text(
                'invited'.tr(),
                style: AppTextStyle.bodysmallSemibold,
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _sections() {
    return [
      _section(report.confirmed, AppColors.green),
      _section(report.pending, AppColors.dinnerTop),
      _section(report.failed, AppColors.darkRed),
      _section(report.declined, AppColors.secondPrimary),
      _section(report.scannedCount, AppColors.primary),
      _section(report.notSent, AppColors.graduationIcon),
    ];
  }

  PieChartSectionData _section(int value, Color color) {
    return PieChartSectionData(
      value: value.toDouble(),
      color: color,
      radius: 12,
      showTitle: false,

      // badgePositionPercentageOffset: 10,
      // borderSide: BorderSide()
    );
  }
}
