import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/map_controller/map_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/features/event/presentation/widgets/create_event_screen/create_event_screen_form.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:pinput/pinput.dart';

class UpdateEventDetailsScreen extends StatelessWidget {
  const UpdateEventDetailsScreen({super.key, required this.eventModel});
  final EventModel eventModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDeafultAppbar(title: 'update_event'.tr()),
      body: _UpdateEventDetailsScreenContent(eventModel),
    );
  }
}

class _UpdateEventDetailsScreenContent extends ConsumerStatefulWidget {
  const _UpdateEventDetailsScreenContent(this.eventModel);
  final EventModel eventModel;

  @override
  ConsumerState<_UpdateEventDetailsScreenContent> createState() =>
      _UpdateEventDetailsScreenContentState();
}

class _UpdateEventDetailsScreenContentState
    extends ConsumerState<_UpdateEventDetailsScreenContent> {
  late TextEditingController _title;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    Future(() {
      ref
          .read(updateEventControllerProvider(
                  ocassionId: widget.eventModel.eventId!)
              .notifier)
          .updateDataForEvent(widget.eventModel);

      ref
          .read(mapControllerProvider(widget.eventModel.eventId).notifier)
          .initLocation(widget.eventModel.eventId);
    });
    _title = TextEditingController()..setText(widget.eventModel.title!);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        mapControllerProvider(widget.eventModel.eventId)
            .select((val) => val.value!.initialLatLng), (previous, next) {
      if (next is AsyncLoading) {
        AppAlert.showLoadingDialog(context);
      } else {
        context.pop();
      }
    });
    ref.listen(
        updateEventControllerProvider(ocassionId: widget.eventModel.eventId!)
            .select((val) => val.value!.createEventResponse), (previous, next) {
      if (next is AsyncLoading) {
        AppAlert.showLoadingDialog(context);
      }

      if (next is AsyncData) {
        context.pop();
        ref.invalidate(eventDetailsControllerProvider(
            ocassionId: widget.eventModel.eventId!));
        context.goNamed(AppRoutes.eventDetails,
            extra: widget.eventModel.eventId);
      }
      if (next is AsyncError) {
        context.pop();
        showErrorDialog(context, next!.error.toString());
      }
    });
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: CreateEventScreenForm(
                occasionId: widget.eventModel.eventId,
                formKey: _formKey,
                title: _title),
          ),
          CustomButtonWidget(
            text: 'save'.tr(),
            onTap: () {
              ref.read(updateEventControllerProvider(
                      ocassionId: widget.eventModel.eventId!)
                  .notifier)
                ..updateDataForEvent(EventModel(title: _title.text))
                ..updateEvent();
            },
            isFiled: false,
            height: 48,
            radius: 10,
            style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
            width: double.infinity,
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
