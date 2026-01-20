import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_footer.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_screen/create_event_steps_section.dart';
import 'package:invit/features/home/event/presentation/widgets/guest_list_screen/add_contact_manually_form.dart';
import 'package:invit/features/home/event/presentation/widgets/guest_list_screen/guest_list_item.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class GuestListScreen extends StatelessWidget {
  const GuestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppbar(
        title: 'guest_list'.tr(),
        actionButton: GestureDetector(
            onTap: () => context.pushNamed(AppRoutes.contactListScreen),
            child: Assets.icons.contactsIc.svg()),
      ),
      body: _GuestListScreenContent(),
    );
  }
}

class _GuestListScreenContent extends ConsumerWidget {
  const _GuestListScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.watch(createEventControllerProvider
        .select((val) => val.value!.selectedContacts));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        spacing: 20,
        children: [
          CreateEventStepsSection(current: 2),
          Expanded(
            child: Container(
              width: double.infinity,
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: AppColors.cardWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 13,
                children: [
                  contacts.isNotEmpty
                      ? Text(
                          'number_of_coupons'.tr(),
                          style: AppTextStyle.rubikRegular12,
                        )
                      : 23.verticalSpace,
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => 12.verticalSpace,
                      itemBuilder: (context, index) {
                        if (index == contacts.length) {
                          return AddContactManuallyForm();
                        }
                        return GuestListItem(contact: contacts[index]);
                      },
                      itemCount: contacts.length + 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CreateEventFooter(onContinue: () {
            if (contacts.isNotEmpty) {
              context.pushNamed(AppRoutes.uploadImageScreen);
            } else {
              showErrorDialog(context, 'guests_are_required'.tr());
            }
          }),
          // CustomButtonWidget(
          //   text: 'next'.tr(),
          //   onTap: () => context.push(AppRoutes.uploadImageScreen),
          //   isFiled: false,
          //   style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
          //   radius: 10,
          //   height: 48,
          //   backgroundColor: AppColors.primary,
          //   width: double.infinity,
          // ),
          SizedBox()
        ],
      ),
    );
  }
}
