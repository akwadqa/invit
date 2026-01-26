import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_app_bar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class TemplatesScreen extends StatelessWidget {
  const TemplatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDeafultAppbar(title: 'templates'.tr()),
      body: _TemplatesScreenContent(),
    );
  }
}

class _TemplatesScreenContent extends StatefulWidget {
  const _TemplatesScreenContent();

  @override
  State<_TemplatesScreenContent> createState() =>
      _TemplatesScreenContentState();
}

class _TemplatesScreenContentState extends State<_TemplatesScreenContent> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(viewportFraction: .85);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final templates = [
      Assets.images.template1Image.image(width: 307),
      Assets.images.template2Image.image(width: 307),
    ];

    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'chose_template'.tr(),
          style: AppTextStyle.rubikSemiBold16,
        ).onlyPadding(start: 22),
        Text(
          'costumize_message'.tr(),
          style: AppTextStyle.rubikRegular12,
        ).onlyPadding(start: 22),
        Expanded(
            child: PageView.builder(
          controller: controller,
          itemCount: templates.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => TemplateQrBottomSheet(),
                );
              },
              child: templates[index]),
        ))
      ],
    );
  }
}

class TemplateQrBottomSheet extends ConsumerWidget {
  const TemplateQrBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    return Container(
      height: 800,
      padding: EdgeInsets.symmetric(horizontal: 33, vertical: 21),
      child: SingleChildScrollView(
        child: Column(
          spacing: 13,
          children: [
            Container(
              width: 148,
              height: 5,
              decoration: BoxDecoration(
                  color: AppColors.textDart,
                  borderRadius: BorderRadius.circular(100)),
            ),
            Text(
              'invitation_choice'.tr(),
              style: AppTextStyle.rubikSemiBold18,
            ),
            Assets.images.qrTemplateImage.image(),
            Assets.images.templateReplyImage.image(),
            CustomButtonWidget(
              text: 'confirm'.tr(),
              onTap: () {
                context.pushNamed(AppRoutes.createEventScreen);
                // ref.read(createEventControllerProvider.notifier).createEvent();
              },
              isFiled: false,
              style:
                  AppTextStyle.rubikMedium18.copyWith(color: AppColors.white),
              radius: 10,
              height: 48,
              backgroundColor: AppColors.primary,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
