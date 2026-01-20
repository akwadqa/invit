import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signUp/presentation/controller/signUp_controller.dart';
import 'package:invit/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../../../gen/assets.gen.dart';
import '../../domain/model/signUp_params.dart';
import 'create_account_date_widget.dart';
import 'create_account_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? _phoneNumber;
  String? selectedDate;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController eventDateController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Form(
      key: _formKey,
      child: Column(
        spacing: 24,
        children: [
          1.verticalSpace,
          Row(
            spacing: Adaptive.px(16),
            // spacing: 16,
            children: [
              Expanded(
                child: AppTextFormField(
                  // hint: 'firstName'.tr(),
                  hint: 'mohamad',
                  label: 'firstName'.tr(),
                  controller: firstNameController,
                  isRequired: true,
                  withIcon: false,
                ),
              ),
              Expanded(
                child: AppTextFormField(
                  // hint: 'firstName'.tr(),
                  hint: 'jamel',
                  label: 'lastName'.tr(),
                  controller: lastNameController,
                  isRequired: true,
                  withIcon: false,
                ),
              ),
            ],
          ),
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'invite@email.com',
            label: 'email'.tr(),
            controller: emailController,
            isRequired: true,
            withIcon: false,
          ),
          Consumer(
            builder: (context, ref, _) {
              final controller = ref.read(signUpControllerProvider.notifier);
              final date = controller.selectedDate;
              Dev.logLine(date);
              return CreateAccountDate(
                controller: eventDateController,
                date: date,
                onSelectDate: (picked) {
                  ref
                      .read(signUpControllerProvider.notifier)
                      .setBirthDate(picked);
                  setState(() {});
                },
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'phone_number'.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              LoginPageNumberField(
                phoneController,
                onChange: (phone) {
                  // phoneController.setText(phone?.number??"");
                },
              ),
            ],
          ),
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'password',
            label: 'setPassword'.tr(),
            controller: passwordController,
            isRequired: true,
            withIcon: true,
            icon: Assets.icons.passwordIc,
            isPassword: true,
          ),
          Consumer(builder: (context, ref, child) {
            ref.listen(signUpControllerProvider, (prev, next) {
              if (next is AsyncData) {
                // context.maybePop().then((_) {
                debugPrint("Success check");
                context.push(AppRoutes.verificationScreen,
                    extra: phoneController.text);
                // context
                //     .pushRoute(VerificationRoute(inputedPhone: _phoneNumber!));
                // _showDialog();
                // });
              } else if (next is AsyncError) {
                showErrorDialog(context, next.error.toString());
              }
            });

            final signInProvider = ref.watch(signUpControllerProvider);
            if (signInProvider is AsyncLoading) {
              return AppLoader();
              // const FadeCircleLoadingIndicator();
            }
            // signInProvider.isLoading
            //     ?

            // :
            return CustomButtonWidget(
              text: 'sign_up'.tr(),
              onTap: () => _submit(ref),
              isFiled: true,
              height: 50,
              width: double.infinity,
              backgroundColor: AppColors.primary,
              radius: 10,
            );
            // return Container();
          }),
        ],
      ),
    );
  }

  Future<void> _submit(WidgetRef ref) async {
    final isValid = _formKey.currentState!.validate();
    debugPrint('FORM VALID: $isValid');
    if (!isValid) return;

    // if (_formKey.currentState?.validate() ?? false) {
    _formKey.currentState?.save();
    await ref.read(signUpControllerProvider.notifier).signUp(
          SignupParams(
            email: emailController.text,
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            birthDate: eventDateController.text,
            password: passwordController.text,
            mobileNumber: phoneController.text,
          ),
        ); // }
  }
}
