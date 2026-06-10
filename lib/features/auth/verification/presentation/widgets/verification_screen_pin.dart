import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:pinput/pinput.dart';

class VerificationScreenPin extends StatelessWidget {
  const VerificationScreenPin({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  // final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      textStyle: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.primaryOpacity.withValues(alpha: .3),
        border: Border.all(color: AppColors.grayBorder),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        // onSubmitted: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please_enter_code'.tr();
          }
          if (value.length < 4) {
            return 'code_must_be_4_numbers'.tr();
          }
          return null;
        },
        readOnly: false,
        controller: controller,
        showCursor: false,

        preFilledWidget: Text(
          '-',
          style: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
        ),
        followingPinTheme: pinTheme.copyWith(
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border.all(color: AppColors.grayBorder),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        focusedPinTheme: pinTheme.copyWith(
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border.all(color: AppColors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        errorPinTheme: pinTheme.copyWith(
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border.all(color: AppColors.darkRed),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        length: 4,
        defaultPinTheme: pinTheme,
      ),
    );
  }
}
