import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signIn/presentation/widgets/sign_in_form.dart';
import 'package:invit/features/home/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_footer.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_screen/create_event_steps_section.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/shared_widgets/image_picker.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomDeafultAppbar(title: 'upload_preview'.tr()),
      body: _UploadImageScreenContent(),
    );
  }
}

class _UploadImageScreenContent extends ConsumerWidget {
  const _UploadImageScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(createEventControllerProvider
        .select((val) => val.value?.eventModel.image));

    ref.listen(
        createEventControllerProvider
            .select((val) => val.value!.createEventResponse), (prev, next) {
      if (next is AsyncLoading) {
        AppAlert.showLoadingDialog(context);
      }
      if (next is AsyncError) {
        context.pop();
        showErrorDialog(context, next!.error.toString());
      }
      if (next is AsyncData) {
        context.pop();
        context.goNamed(AppRoutes.successEventScreen);
      }
    });
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Column(
        spacing: 20,
        children: [
          CreateEventStepsSection(current: 3),
          Expanded(
              child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // spacing: 16,
            children: [
              Text(
                'image'.tr(),
                style: AppTextStyle.rubikMedium16,
              ),
              16.verticalSpace,
              UploadImageScreenUploadSection(),
              16.verticalSpace,
              if (file != null) UploadImageScreenImageSection(file),
            ],
          )),
          CustomButtonWidget(
            text: 'send'.tr(),
            onTap: () {
              ref.read(createEventControllerProvider.notifier).createEvent();
            },
            isFiled: false,
            style: AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
            radius: 10,
            height: 48,
            backgroundColor: AppColors.primary,
            width: double.infinity,
          ),
          // CreateEventFooter(onContinue: () {
          //   ref.read(createEventControllerProvider.notifier).createEvent();
          // }),
          SizedBox()
        ],
      ),
    );
  }
}

class UploadImageScreenImageSection extends StatelessWidget {
  const UploadImageScreenImageSection(
    this.file, {
    super.key,
  });
  final File file;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.file(file),
    );
  }
}

class UploadImageScreenUploadSection extends ConsumerWidget {
  const UploadImageScreenUploadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        final newImage = await pickImage();
        if (newImage != null) {
          ref
              .read(createEventControllerProvider.notifier)
              .updateEvent(EventModel(image: newImage));
        }
      },
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          color: AppColors.primary,
          strokeWidth: 2,
          radius: Radius.circular(7),
          dashPattern: [6, 3],
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 57, vertical: 24),
          decoration: BoxDecoration(color: AppColors.white),
          child: Column(
            spacing: 12,
            children: [
              Assets.icons.uploadImageIc.svg(),
              Text(
                'upload_photo'.tr(),
                style: AppTextStyle.bodysmallSemibold
                    .copyWith(color: AppColors.grayHint),
              )
            ],
          ),
        ),
      ),
    );
  }
}
