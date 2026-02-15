import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/widgets/contact_list_screen/contact_list_screen_tile.dart';
import 'package:invit/features/event/presentation/widgets/create_event_screen/create_event_steps_section.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDeafultAppbar(
        title: 'guest_list'.tr(),
      ),
      body: _ContactListScreenContent(),
    );
  }
}

class _ContactListScreenContent extends ConsumerStatefulWidget {
  const _ContactListScreenContent();

  @override
  ConsumerState<_ContactListScreenContent> createState() =>
      _ContactListScreenContentState();
}

class _ContactListScreenContentState
    extends ConsumerState<_ContactListScreenContent> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(createEventControllerProvider.notifier).getContacts(null);
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(createEventControllerProvider);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        spacing: 20,
        children: [
          CreateEventStepsSection(current: 2),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black,
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              spacing: 18,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'invite_friends'.tr(),
                  style: AppTextStyle.plusBold18,
                ),
                Expanded(
                    child: controller.when(
                  data: (data) {
                    if (data.contacts.isEmpty) {}
                    return ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => ContactListScreenTile(
                            contact: data.contacts[index],
                            selectedContacts:
                                controller.value!.selectedContacts,
                            onChange: (val) {
                              ref
                                  .read(createEventControllerProvider.notifier)
                                  .selectContact(data.contacts[index]);
                            }),
                        separatorBuilder: (context, index) => Divider(
                              height: 0,
                              color: AppColors.lightGray02,
                            ),
                        itemCount: data.contacts.length);
                  },
                  error: (e, st) => Center(),
                  loading: () => AppLoader(),
                ))
              ],
            ),
          )),
          CustomButtonWidget(
            text: 'done'.tr(),
            onTap: () => context.pop(),
            isFiled: false,
            radius: 10,
            style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
            backgroundColor: AppColors.primary,
            height: 48,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
