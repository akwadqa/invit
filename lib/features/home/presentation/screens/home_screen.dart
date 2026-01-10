import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_location.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/home_screen_all_events.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_booking_list.dart';
import 'package:invit/features/home/presentation/widgets/home_screen_invitation_type.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeScreenContent());
  }
}

class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsGeometry.directional(start: 22),
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
  }
}
