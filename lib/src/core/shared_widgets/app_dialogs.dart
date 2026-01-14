import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signIn/presentation/widgets/sign_in_form.dart';
import 'package:invit/features/settings/presentation/controller/settings_controller.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

Future<void> showCustomDialog({
  required BuildContext context,
  required Widget title,
  Widget? icon,
  bool? withDismiss,
}) {
  return showDialog(
    context: context,
    barrierDismissible: withDismiss ?? true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon ?? SizedBox(),
                28.verticalSpace,
                title,
                // Text(
                //   title,
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context)
                //       .textTheme
                //       .displayLarge!
                //       .copyWith(fontSize: 22),
                // ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showAutoClosingDialog(BuildContext context, String message) async {
  Timer timer;

  // Start timer to auto-close the dialog
  timer = Timer(Duration(seconds: 3), () {
    Navigator.of(context).pop();
  });

  await showDialog(
    context: context,
    barrierDismissible: true, // User can still tap outside to close
    builder: (context) => AlertDialog(
      title: Text(
        message,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 16,
              // fontWeight: FontWeight.w700,
              // color: Colors.grey,
            ),
      ).centered(),
      icon: Icon(Icons.error, color: AppColors.darkRed, size: 50),
      actions: [
        TextButton(
          onPressed: () {
            if (timer.isActive) timer.cancel();
            Navigator.of(context).pop(); // User manually closes
          },
          child: Text(
            "OK".tr(),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ).centered(),
        ),
      ],
    ),
  ).then((val) {
    if (timer.isActive) {
      timer.cancel();
    }
  });
}

Dialog showYesNowChoicesDialog(
  BuildContext context, {
  required String title,
  required String dsc,
  required VoidCallback yesButton,
  VoidCallback? noButton,
}) {
  return Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 20),
    backgroundColor: Colors.white.withOpacity(0.8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        40.verticalSpace,
        Text(
          title.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                // color: Colors.grey,
              ),
        ).centered(),
        40.verticalSpace,
        Text(
          dsc.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w500,
              ),
        ).centered(),
        40.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("yes"),
                onTap: yesButton,
                backgroundColor: AppColors.black,
                isFiled: true,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            20.horizontalSpace,
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("no"),
                onTap: noButton ??
                    () {
                      Navigator.pop(context);
                    },
                color: AppColors.black,
                isFiled: false,
                // borderColor: AppColors.darkGray,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 20, vertical: 25),
  );
}

Future<void> showConfirmationDialog({
  required BuildContext context,
  required String title,
  required String description,
  required String confirmText,
  required VoidCallback onConfirm,
  required bool deleteAcc,
  String cancelText = "Cancel",
  Widget? icon,
  bool barrierDismissible = true,
  bool showCloseIcon = true,
  Color confirmColor = AppColors.primary,
}) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) icon,
                  20.verticalSpace,

                  // Title
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  12.verticalSpace,

                  // Description
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.darkGray),
                  ),

                  30.verticalSpace,

                  // Buttons
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: CustomButtonWidget(
                          text: cancelText,
                          isFiled: false,
                          color: AppColors.grayBorder,
                          radius: 10,
                          height: 45,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          width: MediaQuery.sizeOf(context).width,
                        ),
                      ),
                      12.horizontalSpace,
                      Consumer(builder: (context, ref, child) {
                        ref.listen(settingsControllerProvider, (prev, next) {
                          final current = deleteAcc
                              ? next.value?.logoutState
                              : next.value?.deleteAccountState;
                          if (current is AsyncData) {
                            // context.maybePop().then((_) {
                            Dev.logSuccess("Success check");
                            // Navigator.pop(context);

                            context.pushReplacement(AppRoutes.signInScreen);
                            // _showDialog();
                            BotToast.showText(
                              text: 'Successful Check',
                              contentColor: AppColors.green,
                            );

                            // });
                          } else if (current is AsyncError) {
                            showErrorDialog(context, current.error.toString());
                          }
                        });

                        final provider = ref
                            .watch(settingsControllerProvider);
 final current = deleteAcc
                              ? provider.value?.logoutState
                              : provider.value?.deleteAccountState;
                        if (current is AsyncLoading) {
                          return Flexible(flex: 2, child: AppLoader());
                          // const FadeCircleLoadingIndicator();
                        }
                        return Flexible(
                          flex: 2,
                          child: CustomButtonWidget(
                            text: confirmText,
                            isFiled: true,
                            backgroundColor: confirmColor,
                            radius: 10,
                            height: 45,
                            onTap: () {
                              onConfirm();
                            },
                            width: MediaQuery.sizeOf(context).width,
                          ),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),

            // Close (X) Button
            if (showCloseIcon)
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, size: 20),
                ),
              ),
          ],
        ),
      );
    },
  );
}
