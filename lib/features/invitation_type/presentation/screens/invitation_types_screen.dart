import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/invitation_type/presentation/widgets/invitation_type_card_widget.dart';
import 'package:invit/features/settings/presentation/widgets/app_text_styles.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';

import '../../../../src/resourses/font_manager/app_text_style.dart';

class InvitationTypesScreen extends StatelessWidget {
  final bool fromCreateEvent;
  const InvitationTypesScreen({super.key, required this.fromCreateEvent});

  final List<String> eventTypes = const [
    "Wedding",
    "Graduation",
    "Dinner Party",
    "Events",
    "Match",
    "Other",
    "Birthday", // Example extra item (7th)
    "Death party", // Example extra item (7th)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
     appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('invitation_type'),
          // withBackButton: false,
          
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: Text(
              "Choose Event Type",
              style: AppTextStyle.rubikSemiBold18
              ,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: eventTypes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if(!fromCreateEvent) {
                      context.push(AppRoutes.allEventsSecreen);
                    }
                  },
                  child: InvitationTypeCard(
                    title: eventTypes[index],
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
