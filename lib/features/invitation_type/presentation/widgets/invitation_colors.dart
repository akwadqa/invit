import 'dart:ui';

import 'package:invit/src/resourses/color_manager/app_colors.dart';

class InvitationColor {
  final Color background;
  final Color topBar;
  final Color iconBg;

  const InvitationColor({
    required this.background,
    required this.topBar,
    required this.iconBg,
  });
}

class InvitationColors {
  static const List<InvitationColor> colors = [
    InvitationColor(
      background: AppColors.weddingBg,
      topBar: AppColors.weddingTop,
      iconBg: AppColors.weddingIcon,
    ),
    InvitationColor(
      background: AppColors.graduationBg,
      topBar: AppColors.graduationTop,
      iconBg: AppColors.graduationIcon,
    ),
    InvitationColor(
      background: AppColors.dinnerBg,
      topBar: AppColors.dinnerTop,
      iconBg: AppColors.dinnerIcon,
    ),
    InvitationColor(
      background: AppColors.eventsBg,
      topBar: AppColors.eventsTop,
      iconBg: AppColors.eventsIcon,
    ),
    InvitationColor(
      background: AppColors.matchBg,
      topBar: AppColors.matchTop,
      iconBg: AppColors.matchIcon,
    ),
    InvitationColor(
      background: AppColors.otherBg,
      topBar: AppColors.otherTop,
      iconBg: AppColors.otherIcon,
    ),
  ];

  /// Loop colors if items > 6
  static InvitationColor getColor(int index) {
    return colors[index % colors.length];
  }
}
