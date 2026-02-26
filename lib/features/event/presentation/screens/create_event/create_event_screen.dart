import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/create_account_field.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/map_controller/map_controller.dart';
import 'package:invit/features/event/presentation/widgets/create_event_footer.dart';
import 'package:invit/features/event/presentation/widgets/create_event_screen/create_event_screen_form.dart';
import 'package:invit/features/event/presentation/widgets/create_event_screen/create_event_steps_section.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomDeafultAppbar(title: 'create_event'.tr()),
      body: _CreateEventScreenContent(),
    );
  }
}

class _CreateEventScreenContent extends ConsumerStatefulWidget {
  const _CreateEventScreenContent();

  @override
  ConsumerState<_CreateEventScreenContent> createState() =>
      _CreateEventScreenContentState();
}

class _CreateEventScreenContentState
    extends ConsumerState<_CreateEventScreenContent> {
  late TextEditingController title;

  @override
  void initState() {
    super.initState();
    title = TextEditingController();
    Future(() {
      ref.read( mapControllerProvider(null).notifier).initLocation(null);
    });
  }

  @override
  void dispose() {
    title.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(mapControllerProvider(null).select((val) => val.value?.selectedPlace),
        (previous, next) {
      if (next is AsyncLoading) {
        AppAlert.showLoadingDialog(context);
      } else {
        Dev.logLine(next.runtimeType);
        context.pop();
        showErrorDialog(context, next!.error!.toString());
      }
    });

    final locationName = ref.watch(mapControllerProvider(null)
        .select((val) => val.value?.selectedPlace?.value?.locationName));

    final _formKey = GlobalKey<FormState>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        children: [
          CreateEventStepsSection(
            current: 1,
          ),
          20.verticalSpace,
          Expanded(
              child: CreateEventScreenForm(
            formKey: _formKey,
            title: title,
          )),
          24.verticalSpace,
          CreateEventFooter(
            // onContinue: () => context.pushNamed(AppRoutes.guestListScreen),
            onContinue: () {
              if (_formKey.currentState!.validate()) {
                if (locationName != null) {
                  ref
                      .read(createEventControllerProvider.notifier)
                      .updateEvent(EventModel(title: title.text));
                  context.pushNamed(AppRoutes.guestListScreen);
                } else {
                  showErrorDialog(context, 'location_required'.tr());
                }
              }
            },
          ),
          20.verticalSpace
        ],
      ),
    );
  }
}
