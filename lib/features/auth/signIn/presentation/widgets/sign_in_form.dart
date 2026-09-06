import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signIn/presentation/controller/sign_in_controller.dart';
import 'package:invit/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({super.key});

  @override
  ConsumerState<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> {
  // String? _phoneNumber;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ref.listen(signInControllerProvider, (prev, next) {
      if (next is AsyncData && prev is AsyncLoading) {
        // context.maybePop().then((_) {
        debugPrint("Success check");
        if (next.value?.signinResponseModel?.validation.userExist == false) {
          context.push(AppRoutes.signUpScreen, extra: phoneController.text);
        } else {
          context.push(
            AppRoutes.verificationScreen,
            extra: phoneController.text,
          );
        }

        // _showDialog();
        // });
      } else if (next is AsyncError) {
        showErrorDialog(context, next.error.toString());
      }
    });

    // final phoneNotifier =
    //     ref.watch(signInControllerProvider.notifier).phoneController;
    return Form(
      key: _formKey,
      child: Column(
        spacing: 33,
        children: [
          LoginPageNumberField(
            phoneController,
            onChange: (phone) {
              ref
                  .read(signInControllerProvider.notifier)
                  .checkPhoneFilled(phone!.number.isNotEmpty);
              // ref
              //     .read(signInControllerProvider.notifier)
              //     .changePhoneNumber(phone?.number ?? "");
              setState(() {});
            },
          ),
          // PhoneNumberField(
          //   onSaved: (value) => _phoneNumber = value,
          // ),
          Consumer(
            builder: (context, ref, child) {
              final signInProvider = ref.watch(signInControllerProvider);

              if (signInProvider is AsyncLoading) {
                return AppLoader();
                // const FadeCircleLoadingIndicator();
              }
              // signInProvider.isLoading
              //     ?

              // :
              final isEmpty =
                  ref.watch(signInControllerProvider).value!.isPhoneFilled ??
                  false;
              return CustomButtonWidget(
                text: 'login'.tr(),
                style: AppTextStyle.rubikMedium18.copyWith(
                  color: AppColors.white,
                ),
                onTap: () {
                  !isEmpty ? null : _submit(ref);
                },
                isFiled: true,
                height: 50,
                width: double.infinity,
                // backgroundColor: !isEmpty ? AppColors.gray : AppColors.primary,
                backgroundColor: AppColors.primary,
                radius: 10,
              );
              // return Container();
            },
          ),
        ],
      ),
    );
  }

  Future<void> _submit(WidgetRef ref) async {
    final isValid = _formKey.currentState!.validate();
    debugPrint('FORM VALID: $isValid');
    if (!isValid) return;

    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      FocusScope.of(context).unfocus();
      await ref
          .read(signInControllerProvider.notifier)
          .signIn(phoneController.text)
          .then((_) {
            ref.read(signInControllerProvider.notifier)
              ..makeResendButtonVisible(false)
              ..makeConfirmButtonVisible(true);
          });
    }
  }
}
