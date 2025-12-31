import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:sizer/sizer.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    required this.hint,
    required this.label,
    this.isReadOnly = false,
    this.icon,
    required this.isRequired,
    this.onTap,
    this.isPassword = false,
    this.withIcon = true,
    this.validator,
    this.inputType = TextInputType.text,
    this.value,
  });
  final void Function()? onTap;
  final String? value;
  final String hint, label;
  final bool isPassword;
  final SvgGenImage? icon;
  final TextInputType? inputType;
  final bool isRequired, isReadOnly, withIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  String? requiredVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return context.tr('required');
    }
    return null;
  }

  String? emailVal(String? val, BuildContext context) {
    if ((val?.isEmpty ?? true) || val == null) {
      return null;
    } else {
      if (!val.contains('@')) {
        return context.tr('emailValidatorMessage');
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        12.verticalSpace,
        Container(
          // width: double.infinity,
          decoration: BoxDecoration(
            // color: AppColors.background,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 3,
                color: AppColors.grayHint.withValues(alpha: .24),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: isPassword,
            // key: ValueKey(value),
            // initialValue: value,
            onTap: onTap,
            keyboardType: inputType,
            readOnly: isReadOnly,
            controller: controller,
            validator: validator ??
                (val) => isRequired
                    ? requiredVal(val, context)
                    : emailVal(val, context),
            cursorColor: AppColors.primary,
            style: Theme.of(context).textTheme.bodyMedium,
            // style: AppTextStyle.rubikRegular16.copyWith(
            //   color: AppColors.primary,
            // ),
            decoration: InputDecoration(
              filled: true,
              suffixIcon: isReadOnly
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Assets.icons.dateIc.svg(),
                    )
                  : null,
              hintText: hint,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.grayHint),
              // hintStyle: AppTextStyle.rubikRegular16.copyWith(
              //   color: AppColors.grayHint,
              // ),

              // contentPadding: withIcon
              //     ? EdgeInsets.zero
              //     : EdgeInsets.symmetric(horizontal: 16.w),
              prefixIcon: withIcon
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17),
                      child: icon!.svg(),
                    )
                  : null,

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.primary),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.w),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
              // prefixIconConstraints: BoxConstraints(maxWidth: 18),
            ),
          ),
        ),
      ],
    );
  }
}
