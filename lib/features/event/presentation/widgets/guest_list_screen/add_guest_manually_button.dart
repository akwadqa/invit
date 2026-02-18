// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_controller.dart';

import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class AddGuestManuallyButton extends ConsumerWidget {
  const AddGuestManuallyButton({
    super.key,
    required this.formKey,
    required this.phone,
    required this.name,
    this.occasionId,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController name, phone;
  final String? occasionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          ref
              .read(contactsControllerProvider(occasionId).notifier)
              .addNewContact(
                  firstName: name.text,
                  lastName: '',
                  phoneNumber: phone.text,
                  occasionId: occasionId);
        }
      },
      child: Row(
        spacing: 8,
        children: [
          Assets.icons.addContactIc.svg(),
          Text(
            'add'.tr(),
            style:
                AppTextStyle.rubikMedium14.copyWith(color: AppColors.primary),
          )
        ],
      ),
    );
  }
}
