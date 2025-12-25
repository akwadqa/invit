import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/auth/signIn/presentation/controller/sign_in_controller.dart';
import 'package:invit/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:invit/features/auth/widgets/text_form_fields/phone_number_field.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:lottie/lottie.dart';

import '../../../../../gen/assets.gen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  String? _phoneNumber;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 33,
        children: [
          LoginPageNumberField(phoneController),
          // PhoneNumberField(
          //   onSaved: (value) => _phoneNumber = value,
          // ),
          Consumer(builder: (context, ref, child) {
             ref.listen(signInControllerProvider, (prev, next) {
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

            final signInProvider = ref.watch(signInControllerProvider);
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
      await ref.read(signInControllerProvider.notifier).signIn(phoneController.text);
    // }
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