import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class AddGuestManuallyButton extends ConsumerWidget {
  const AddGuestManuallyButton({
    super.key,
    required this.formKey, required this.name, required this.phone,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController name, phone;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          ref.read(createEventControllerProvider.notifier).addNewContact(firstName: name.text, lastName: '', phoneNumber: phone.text);
          
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
