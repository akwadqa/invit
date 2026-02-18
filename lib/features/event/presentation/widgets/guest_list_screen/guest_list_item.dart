import 'package:flutter/material.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_state.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:invit/features/event/presentation/widgets/guest_list_screen/guest_item_count_buttons.dart';
import 'package:invit/features/event/presentation/widgets/guest_list_screen/guest_item_delete_button.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class GuestListItem extends StatelessWidget {
  const GuestListItem({
    super.key,
    required this.contact,
    this.occasionId,
  });

  final SelectedContact contact;
  final String? occasionId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .25),
              blurRadius: 4,
            )
          ]),
      child: Row(
        children: [
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.contact.displayName,
                style: AppTextStyle.rubikRegular16
                    .copyWith(color: AppColors.textDart),
              ),
              Text(
                '${contact.code}${contact.contact.phones.first.number}',
                style: AppTextStyle.outfitRegular16,
              ),
            ],
          ),
          Spacer(),
          GuestItemCountButtons(
            contact: contact,
            occasionId: occasionId,
          ),
          GuestItemDeleteButton(
            contact: contact.contact,
            occasionId: occasionId,
          )
        ],
      ),
    );
  }
}
