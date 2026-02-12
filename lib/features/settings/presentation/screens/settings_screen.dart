import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/settings/presentation/controller/settings_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/storage/local_storage_service.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import '../widgets/app_text_styles.dart';
import '../widgets/change_language_bottom_sheet.dart';
import '../widgets/settings_item_card.dart';
import '../widgets/settings_profile_header.dart';
import '../widgets/settings_section_title.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(settingsControllerProvider);
    final localStorage = ref.watch(localStorageServiceProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('settings'),
          withBackButton: false,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          spacing: 20,
          children: [
            SettingsProfileHeader(
              name: localStorage.userInfo.fullName,
            ),

            // const SettingsSectionTitle(title: 'account_details'),

            // SettingsItemCard(
            //   title: 'edit_my_profile',
            //   icon: Assets.icons.editProfileIc,
            // ),

            // const Divider(),
            const SettingsSectionTitle(title: 'help_center'),

            GestureDetector(
              onTap: () => showModalBottomSheet(
                context: context,
                builder: (context) => ChangeLanguageBottomSheet(),
              ),
              child: SettingsItemCard(
                title: 'change_language'.tr(),
                icon: Assets.icons.langIc,
              ),
            ),

            SettingsItemCard(
              onTap: () => context.push(AppRoutes.paymentScreen),
              title: 'pricing_services'.tr(),
              icon: Assets.icons.privacyIc,
            ),

            // SettingsItemCard(
            //   title: 'Dark Mode',
            //   trailing: Switch(value: false, onChanged: (_) {}),
            // ),
            // SettingsItemCard(
            //   title: 'notification'.tr(),
            //   trailing: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 10.0),
            //     child: SizedBox(
            //       height: 10,
            //       child: Switch(
            //         value: settingsState.value?.notificationState ?? false,
            //         onChanged: (val) {
            //           ref
            //               .read(settingsControllerProvider.notifier)
            //               .onNotificationChange(val);
            //         },
            //         activeThumbColor: AppColors.white,
            //         activeTrackColor: AppColors.primary,
            //         inactiveThumbColor: AppColors.white,
            //         inactiveTrackColor: AppColors.gray,
            //       ),
            //     ),
            //   ),
            //   icon: Assets.icons.notificationIc,
            // ),

            SettingsItemCard(
              title: 'logout'.tr(),
              icon: Assets.icons.logoutIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  title: "logout_title",
                  description: "logout_description",
                  confirmText: "logout_confirm",
                  confirmColor: AppColors.primary,
                  icon: Assets.icons.logoutWithCornerIc.svg(),
                  onConfirm: () {
                    ref.read(settingsControllerProvider.notifier).logout();

                    // delete user logic
                  },
                  deleteAcc: false,
                );
              },
            ),
            SettingsItemCard(
              title: 'delete_user',
              icon: Assets.icons.deleteIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  deleteAcc: true,
                  title: "delete_user_title",
                  description: "delete_user_description",
                  confirmText: "delete_user_confirm",
                  confirmColor: AppColors.primary,
                  icon: Assets.icons.deleteWithCornerIc.svg(),
                  onConfirm: () {
                    // delete user logic
                    ref
                        .read(settingsControllerProvider.notifier)
                        .deleteAccount();
                  },
                );
              },
            ),
            100.verticalSpace,
          ],
        ),
      ),
    );
  }
}
