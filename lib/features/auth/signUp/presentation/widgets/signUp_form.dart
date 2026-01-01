import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/auth/signUp/presentation/controller/signUp_controller.dart';
import 'package:invit/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Form(
      key: _formKey,
      child: Column(
        spacing: 33,
        children: [
          Row(
            spacing: Adaptive.px(16),
            // spacing: 16,
            children: [
              Expanded(
                child: AppTextFormField(
                  // hint: 'firstName'.tr(),
                  hint: 'Be',
                  label: 'firstName'.tr(),
                  controller: TextEditingController(),
                  isRequired: true,
                  withIcon: false,
                ),
              ),
              Expanded(
                child: AppTextFormField(
                  // hint: 'firstName'.tr(),
                  hint: 'Be',
                  label: 'firstName'.tr(),
                  controller: TextEditingController(),
                  isRequired: true,
                  withIcon: false,
                ),
              ),
            ],
          ),
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'Be',
            label: 'email'.tr(),
            controller: TextEditingController(),
            isRequired: true,
            withIcon: false,
          ),
          CreateAccountDate(
            date: DateTime.now().toString(),
            onSelectDate: (_) {},
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'phone_number'.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              12.verticalSpace,
              LoginPageNumberField(TextEditingController()),
            ],
          ),
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'password',
            label: 'setPassword'.tr(),
            controller: TextEditingController(),
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
              text: 'login'.tr(),
              onTap: () => _submit(ref),
              isFiled: true,
              height: 50,
              width: double.infinity,
              backgroundColor: AppColors.primary,
              radius: 10,
            );
            // return Container();
          }),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'alreadyHaveAnAccount'.tr(),
                style: textTheme.labelLarge!.copyWith(color: AppColors.grey),
              ),
              Text('login'.tr())
            ],
          )
        
        ],
      ),
    );
  }

  Future<void> _submit(WidgetRef ref) async {
    final isValid = _formKey.currentState!.validate();
    debugPrint('FORM VALID: $isValid');
      if (!isValid) return;

    // if (_formKey.currentState?.validate() ?? false) {
    //   _formKey.currentState?.save();
      await ref.read(signUpControllerProvider.notifier).signUp(SignupParams(email: "email", firstName: "", lastName: "lastName", birthDate: "20-2-2000", password: "mmosk", mobileNumber: "98754"));    // }
  }
}

Future<bool?> showCustomDialog({
  required BuildContext context,
  required Widget title,
  Widget? icon,
}) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [icon ?? SizedBox(), 28.verticalSpace, title],
            ),
          ),
        ),
      );
    },
  );
}
Future<bool?> showErrorDialog(BuildContext context, String message) {
  return showCustomDialog(
    context: context,
    title: Text(message),
    icon: Icon(
      Icons.error,
      color: AppColors.darkRed,
      size: 50,
    ),
  );
}