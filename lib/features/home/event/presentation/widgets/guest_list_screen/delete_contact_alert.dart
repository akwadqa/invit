import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class DeleteContactAlert extends ConsumerWidget {
  const DeleteContactAlert(this.contact, {
    super.key,
  });
  final Contact contact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        // width: 256,
        // height: 300,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () => context.pop(), icon: Icon(Icons.close)),
            ),
            Assets.icons.deleteContactAlertIc.svg(),
            20.verticalSpace,
            Text(
              'delete_contact'.tr(),
              style: AppTextStyle.rubikBold20,
            ),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'delete_contact_alert'.tr(),
                textAlign: TextAlign.center,
                style: AppTextStyle.rubikRegular16
                    .copyWith(color: AppColors.bodyColor),
              ),
            ),
            33.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonWidget(
                  text: 'cancel'.tr(),
                  onTap: () => context.pop(),
                  isFiled: false,
                  height: 48,
                  radius: 10,
                  style: AppTextStyle.rubikMedium18
                      .copyWith(color: AppColors.black),
                  width: 140,
                  backgroundColor: AppColors.white,
                ),
                CustomButtonWidget(
                  text: 'delete'.tr(),
                  onTap: () {
                    ref
                        .read(createEventControllerProvider.notifier)
                        .deleteSelectedContact(contact);
                    context.pop();
                  },
                  isFiled: false,
                  height: 48,
                  radius: 10,
                  style: AppTextStyle.rubikMedium18
                      .copyWith(color: AppColors.white),
                  width: 140,
                  backgroundColor: AppColors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
