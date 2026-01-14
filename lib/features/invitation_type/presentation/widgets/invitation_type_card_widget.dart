import 'package:flutter/material.dart';
import 'package:invit/features/invitation_type/presentation/widgets/invitation_colors.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class InvitationTypeCard extends StatelessWidget {
  final String title;
  final int index;

  const InvitationTypeCard({
    super.key,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final color = InvitationColors.getColor(index);

    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
          color: color.background,
          borderRadius: BorderRadius.circular(10),
          border: BoxBorder.fromLTRB(
              top: BorderSide(color: color.topBar, width: 10))),
      child: ListTile(
        
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: color.iconBg,
        ),
        title: Text(title, style: AppTextStyle.rubikSemiBold16),
      ).centered(),
    );
  }
}
