import 'package:flutter/material.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/signUp_form.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/signUp_header.dart';
import 'package:invit/features/auth/widgets/auth_build_content.dart';
import '../widgets/signUp_footer.dart';

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
  const _SignupContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 18,
        children: [
          SignupHeader(),
          SignUpForm(),
          // SignUpFooter(),
        ],
      ),
    );
  }
}

// class _SignupContent extends StatelessWidget {
//    _SignupContent({super.key});
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return SingleChildScrollView(
//       child: Column(
//         spacing: 18,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             'sign_up'.tr(),
//             textAlign: TextAlign.center,
//             style: textTheme.headlineLarge!.copyWith(
//               color: AppColors.primary,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           Row(
//             spacing: Adaptive.px(16),
//             // spacing: 16,
//             children: [
//               Expanded(
//                 child: AppTextFormField(
//                   // hint: 'firstName'.tr(),
//                   hint: 'Be',
//                   label: 'firstName'.tr(),
//                   controller: TextEditingController(),
//                   isRequired: true,
//                   withIcon: false,
//                 ),
//               ),
//               Expanded(
//                 child: AppTextFormField(
//                   // hint: 'firstName'.tr(),
//                   hint: 'Be',
//                   label: 'firstName'.tr(),
//                   controller: TextEditingController(),
//                   isRequired: true,
//                   withIcon: false,
//                 ),
//               ),
//             ],
//           ),
//           AppTextFormField(
//             // hint: 'firstName'.tr(),
//             hint: 'Be',
//             label: 'email'.tr(),
//             controller: TextEditingController(),
//             isRequired: true,
//             withIcon: false,
//           ),
//           CreateAccountDate(
//             date: DateTime.now().toString(),
//             onSelectDate: (_) {},
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'phone_number'.tr(),
//                 style: Theme.of(context).textTheme.labelLarge,
//               ),
//               12.verticalSpace,
//               LoginPageNumberField(TextEditingController()),
//             ],
//           ),
//           AppTextFormField(
//             // hint: 'firstName'.tr(),
//             hint: 'password',
//             label: 'setPassword'.tr(),
//             controller: TextEditingController(),
//             isRequired: true,
//             withIcon: true,
//             icon: Assets.icons.passwordIc,
//             isPassword: true,
//           ),
//            Consumer(builder: (context, ref, child) {
//              ref.listen(signUpControllerProvider, (prev, next) {
//             if (next is AsyncData) {
//               // context.maybePop().then((_) {
//               debugPrint("Success check");
//               // context
//               //     .pushRoute(VerificationRoute(inputedPhone: _phoneNumber!));
//               // _showDialog();
//               // });
//             } else if (next is AsyncError) {
//               showErrorDialog(context, next.error.toString());
//             }
//           });

//             final signInProvider = ref.watch(signUpControllerProvider);
//              if (signInProvider is AsyncLoading) {
//             return AppLoader();
//             // const FadeCircleLoadingIndicator();
//             }
//             // signInProvider.isLoading
//             //     ?

//             // :
//             return CustomButtonWidget(
//               text: 'login'.tr(),
//               onTap: () => _submit(ref),
//               isFiled: true,
//               height: 50,
//               width: double.infinity,
//               backgroundColor: AppColors.primary,
//               radius: 10,
//             );
//             // return Container();
//           }),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'alreadyHaveAnAccount'.tr(),
//                 style: textTheme.labelLarge!.copyWith(color: AppColors.grey),
//               ),
//               Text('login'.tr())
//             ],
//           )
//         ],
//       ),
//     );
//   }
//     Future<void> _submit(WidgetRef ref) async {
//     // final isValid = _formKey.currentState!.validate();
//     // debugPrint('FORM VALID: $isValid');
//     //   if (!isValid) return;

//     // if (_formKey.currentState?.validate() ?? false) {
//     //   _formKey.currentState?.save();
//       await ref.read(signUpControllerProvider.notifier).signUp(SignupParams(email: "email", firstName: "", lastName: "lastName", birthDate: "20-2-2000", password: "mmosk", mobileNumber: "98754"));
//     // }
//   }
// }

// class CreateAccountDate extends StatelessWidget {
//   const CreateAccountDate({
//     super.key,
//     required this.date,
//     // required this.controller,
//     required this.onSelectDate,
//   });
//   final String? date;
//   final void Function(DateTime date) onSelectDate;
//   // final String date;
//   // final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     // return Consumer(
//     //   builder: (context, ref, child) {
//     final deviceLocale = Localizations.localeOf(context).toString();
//     final dataFormatter = date != null
//         ? DateFormat(
//             'EEEE dd MMMM yyyy',
//             deviceLocale,
//           ).format(DateTime.parse(date!))
//         : '';
//     return AppTextFormField(
//       // controller: controller,
//       // controller: _date,
//       // value: ,
//       // controller: controller,
//       controller: TextEditingController(text: dataFormatter),
//       // value: dataFormatter,
//       validator: (val) {
//         if (val == null || val.isEmpty) {
//           return context.tr('required');
//         }
//         return null;
//       },
//       hint: context.tr('selectDate'),
//       isRequired: false,
//       withIcon: false,
//       label: context.tr('eventDate'),
//       // icon: Assets.icons.selectedDateIc,
//       isReadOnly: true,
//       onTap: () async {
//         final date = await showDatePicker(
//           builder: (context, child) => Theme(
//             data: Theme.of(context).copyWith(
//               datePickerTheme: DatePickerThemeData(
//                 dayBackgroundColor: MaterialStateProperty.resolveWith((states) {
//                   if (states.contains(MaterialState.selected)) {
//                     return AppColors.primary;
//                   }
//                   return null; // الافتراضي
//                 }),
//                 //   selectionColor: Colors.red,
//                 //   selectedDayForegroundColor: Colors.white,
//               ),
//             ),
//             child: child!,
//           ),
//           context: context,
//           firstDate: DateTime.now(),
//           lastDate: DateTime(2100),
//         );

//         if (date != null) {
//           onSelectDate(date);
//         }
//       },
//     );
//     //   },
//     // );
//   }
// }
