import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/settings/presentation/controller/settings_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import '../widgets/app_text_styles.dart';
import '../widgets/settings_item_card.dart';
import '../widgets/settings_profile_header.dart';
import '../widgets/settings_section_title.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(settingsControllerProvider);
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
              name: 'Hadeel Be',
            ),

            const SettingsSectionTitle(title: 'Account Details'),

            SettingsItemCard(
              title: 'Edit My Profile',
              icon: Assets.icons.editProfileIc,
            ),

            // const Divider(),
            const SettingsSectionTitle(title: 'Help Center'),

            SettingsItemCard(
              title: 'Change Language',
              icon: Assets.icons.langIc,
            ),

            SettingsItemCard(
              title: 'Pricing & Services',
              icon: Assets.icons.privacyIc,
            ),

            // SettingsItemCard(
            //   title: 'Dark Mode',
            //   trailing: Switch(value: false, onChanged: (_) {}),
            // ),
            SettingsItemCard(
              title: 'Notification',
              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  height: 10,
                  child: Switch(
                    value: settingsState.value?.notificationState ?? false,
                    onChanged: (val) {
                      ref
                          .read(settingsControllerProvider.notifier)
                          .onNotificationChange(val);
                    },
                    activeThumbColor: AppColors.white,
                    activeTrackColor: AppColors.primary,
                    inactiveThumbColor: AppColors.white,
                    inactiveTrackColor: AppColors.gray,
                  ),
                ),
              ),
              icon: Assets.icons.notificationIc,
            ),

            SettingsItemCard(
              title: 'Log out',
              icon: Assets.icons.logoutIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  title: "log out",
                  description:
                      "Are you sure you want  to log out?",
                  confirmText: "Yes, Logout",
                  confirmColor: AppColors.primary,
                  icon: Stack(
                    alignment: AlignmentGeometry.center,
                    children: [
                      Assets.icons.iconCorner.svg(height: 60),
                      Assets.icons.logoutIc.svg(height: 40).onlyPadding(top: 5,start: 10),
                    ],
                  ),
                  onConfirm: () {
                        ref.read(settingsControllerProvider.notifier).logout();

                    // delete user logic
                  }, deleteAcc: false,
                );
              },
            ),
            SettingsItemCard(
              title: 'Delete User',
              icon: Assets.icons.deleteIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  deleteAcc: true,
                  title: "Delete User",
                  description:
                      "All your account and invitations will be deleted, are you sure?",
                  confirmText: "Yes, Delete",
                  confirmColor: AppColors.primary,
                  icon: Stack(
                    alignment: AlignmentGeometry.center,
                    children: [
                      Assets.icons.iconCorner.svg(height: 60),
                      Assets.icons.deleteIc.svg(height: 40),
                    ],
                  ),
                  onConfirm: () {
                    // delete user logic
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
