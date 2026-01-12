import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_location.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/home_screen_all_events.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_booking_list.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_invitation_type.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeScreenContent());
  }
}

class _HomeScreenContent extends ConsumerWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeProvider = ref.watch(homeControllerProvider);
    return homeProvider.when(
      data: (data) {
        return ListView(
          padding: EdgeInsetsGeometry.zero,
          children: [
            HomeScreenAppBar(),
            20.verticalSpace,
            HomeScreenBookingList(),
            20.verticalSpace,
            HomeScreenInvitationType(),
            20.verticalSpace,
            HomeScreenAllEvents(),
            140.verticalSpace
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) => AppErrorWidget(errorMsg: error.toString()),
      loading: () => Skeletonizer(
        enabled: true,
        child: ListView(
          padding: EdgeInsetsGeometry.zero,
          children: [
            HomeScreenAppBar(),
            20.verticalSpace,
            HomeScreenBookingList(),
            20.verticalSpace,
            HomeScreenInvitationType(),
            20.verticalSpace,
            HomeScreenAllEvents(),
            140.verticalSpace
          ],
        ),
      ),
    );
  }
}
