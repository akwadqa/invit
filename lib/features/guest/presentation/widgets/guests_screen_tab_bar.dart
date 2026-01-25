import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/guest/presentation/controller/guest_ui_controller.dart';
import 'package:invit/features/guest/presentation/widgets/guests_screen_tabs_item.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class GuestsScreenTabBar extends StatelessWidget {
  const GuestsScreenTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 44,
      margin: EdgeInsets.only(bottom: 10, right: 22, left: 22),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: .25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Consumer(
        builder: (context, ref, child) {
          final index = ref.watch(guestUiControllerProvider).index;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GuestsScreenTabsItem(
                  index: index,
                  tabIndex: 0,
                  title: context.tr('status_all'),
                ),
                GuestsScreenTabsItem(
                  index: index,
                  tabIndex: 1,
                  title: context.tr('status_confirmed'),
                ),
                GuestsScreenTabsItem(
                  index: index,
                  tabIndex: 2,
                  title: context.tr('rejected'),
                ),
                GuestsScreenTabsItem(
                  index: index,
                  tabIndex: 3,
                  title: context.tr('waiting'),
                ),
                GuestsScreenTabsItem(
                  index: index,
                  tabIndex: 4,
                  title: context.tr('failed'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
