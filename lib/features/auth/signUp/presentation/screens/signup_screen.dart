import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/create_account_field.dart';
import 'package:invit/features/auth/widgets/auth_build_content.dart';
import 'package:invit/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthScreen(child: _SignupContent()),
    );
  }
}

class _SignupContent extends StatelessWidget {
  const _SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        spacing: 18,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'sign_up'.tr(),
            textAlign: TextAlign.center,
            style: textTheme.headlineLarge!.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w900,
            ),
          ),
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
          CustomButtonWidget(
            text: 'sign_up'.tr(),
            onTap: () {},
            isFiled: true,
            height: 50,
            width: double.infinity,
            backgroundColor: AppColors.primary,
            radius: 10,
          ),
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
}

class CreateAccountDate extends StatelessWidget {
  const CreateAccountDate({
    super.key,
    required this.date,
    // required this.controller,
    required this.onSelectDate,
  });
  final String? date;
  final void Function(DateTime date) onSelectDate;
  // final String date;
  // final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    // return Consumer(
    //   builder: (context, ref, child) {
    final deviceLocale = Localizations.localeOf(context).toString();
    final dataFormatter = date != null
        ? DateFormat(
            'EEEE dd MMMM yyyy',
            deviceLocale,
          ).format(DateTime.parse(date!))
        : '';
    return AppTextFormField(
      // controller: controller,
      // controller: _date,
      // value: ,
      // controller: controller,
      controller: TextEditingController(text: dataFormatter),
      // value: dataFormatter,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return context.tr('required');
        }
        return null;
      },
      hint: context.tr('selectDate'),
      isRequired: false,
      withIcon: false,
      label: context.tr('eventDate'),
      // icon: Assets.icons.selectedDateIc,
      isReadOnly: true,
      onTap: () async {
        final date = await showDatePicker(
          builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              datePickerTheme: DatePickerThemeData(
                dayBackgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return AppColors.primary;
                  }
                  return null; // الافتراضي
                }),
                //   selectionColor: Colors.red,
                //   selectedDayForegroundColor: Colors.white,
              ),
            ),
            child: child!,
          ),
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );

        if (date != null) {
          onSelectDate(date);
        }
      },
    );
    //   },
    // );
  }
}
