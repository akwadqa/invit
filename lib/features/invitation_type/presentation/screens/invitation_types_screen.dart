import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/invitation_type/presentation/widgets/invitation_type_card_widget.dart';
import 'package:invit/features/settings/presentation/widgets/app_text_styles.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

import '../../../../src/resourses/font_manager/app_text_style.dart';

class InvitationTypesScreen extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final occasionTypes = ref.watch(
      homeControllerProvider.select(
        (state) => state.value?.occasionTypes ?? const [],
      ),
    );
    return Scaffold(
        backgroundColor: AppColors.white,
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
                "chooseEventType".tr(),
                style: AppTextStyle.rubikSemiBold18,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: occasionTypes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (!fromCreateEvent) {
                        context.push(AppRoutes.allEventsSecreen);
                      } else {
                        ref
                            .read(createEventControllerProvider.notifier)
                            .updateEvent(
                                EventModel(type: occasionTypes[index].title));
                        context.pushNamed(AppRoutes.templatesScreen);
                      }
                    },
                    child: InvitationTypeCard(
                      ocationTypeModel: occasionTypes[index],
                      index: index,
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
