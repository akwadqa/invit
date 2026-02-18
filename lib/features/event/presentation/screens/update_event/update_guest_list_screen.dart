import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/features/event/presentation/widgets/guest_list_screen/add_contact_manually_form.dart';
import 'package:invit/features/event/presentation/widgets/guest_list_screen/guest_list_item.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class UpdateGuestListScreen extends StatelessWidget {
  const UpdateGuestListScreen({super.key, required this.occasionId});
  final String occasionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardWhite,
      appBar: CustomDeafultAppbar(
        title: 'guest_list'.tr(),
        actionButton: GestureDetector(
            onTap: () => context.pushNamed(AppRoutes.contactListScreen,
                extra: occasionId),
            child: Assets.icons.contactsIc.svg()),
      ),
      body: _UpdateGuestListScreenContent(occasionId),
    );
  }
}

class _UpdateGuestListScreenContent extends ConsumerStatefulWidget {
  const _UpdateGuestListScreenContent(this.occasionId);
  final String occasionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      __UpdateGuestListScreenContentState();
}

class __UpdateGuestListScreenContentState
    extends ConsumerState<_UpdateGuestListScreenContent> {
  @override
  Widget build(BuildContext context) {
    ref.listen(
        contactsControllerProvider(widget.occasionId)
            .select((val) => val.value!.updateGuestListRespone),
        (previous, next) {
      if (next is AsyncLoading) {
        AppAlert.showLoadingDialog(context);
      }

      if (next is AsyncData) {
        context.pop();
        ref.invalidate(
            eventDetailsControllerProvider(ocassionId: widget.occasionId));
        context.goNamed(AppRoutes.eventDetails, extra: next!.value!.occasionId);
      }
      if (next is AsyncError) {
        context.pop();
        showErrorDialog(context, next!.error.toString());
      }
    });
    final contacts = ref.watch(contactsControllerProvider(widget.occasionId)
        .select((val) => val.value!.selectedContacts));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
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
                  contacts!.isNotEmpty
                      ? Text(
                          'number_of_coupons'.tr(),
                          style: AppTextStyle.rubikRegular12,
                        )
                      : SizedBox(),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => 12.verticalSpace,
                      itemBuilder: (context, index) {
                        if (index == contacts.length) {
                          return AddContactManuallyForm(
                            occasionId: widget.occasionId,
                          );
                        }
                        return GuestListItem(
                          contact: contacts[index],
                          occasionId: widget.occasionId,
                        );
                      },
                      itemCount: contacts.length + 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          10.verticalSpace,
          CustomButtonWidget(
            text: 'save'.tr(),
            onTap: () {
              ref
                  .read(contactsControllerProvider(widget.occasionId).notifier)
                  .updateGuestList(occasionId: widget.occasionId);
            },
            isFiled: false,
            style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
            radius: 10,
            height: 48,
            backgroundColor: AppColors.primary,
            width: double.infinity,
          ),
          10.verticalSpace
        ],
      ),
    );
  }
}
