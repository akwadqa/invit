import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_controller.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_state.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class GuestItemCountButtons extends ConsumerWidget {
  const GuestItemCountButtons({
    super.key,
    required this.contact,
    required this.occasionId,
  });
  final String? occasionId;

  final SelectedContact contact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      // padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.primary, width: 2),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              ref
                  .read(contactsControllerProvider(occasionId).notifier)
                  .decrementCount(contact, occasionId);
            },
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 30,
              color: AppColors.primary,
            ),
          ),
          Text(
            contact.count.toString(),
            style:
                AppTextStyle.rubikRegular16.copyWith(color: AppColors.primary),
          ),
          GestureDetector(
            onTap: () {
              ref
                  .read(contactsControllerProvider(occasionId).notifier)
                  .incrementCount(contact, occasionId);
            },
            child: Icon(
              Icons.keyboard_arrow_up_rounded,
              color: AppColors.primary,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
