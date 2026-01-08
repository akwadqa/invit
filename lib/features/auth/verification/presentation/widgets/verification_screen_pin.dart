import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:pinput/pinput.dart';

class VerificationScreenPin extends StatelessWidget {
  const VerificationScreenPin({super.key, required this.controller, this.onSaved});
  final TextEditingController controller;
    final void Function(String?)? onSaved;


  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      textStyle: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Border.all(color: AppColors.grayBorder),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      
      child: Pinput(
        onSubmitted:onSaved ,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter code';
          }
          // if (value.length != 4) {
          //   return 'The code must be 4 numbers';
          // }
          return null;
        },
        readOnly: false,
        controller: controller,
        showCursor: false,
        preFilledWidget: Text(
          '-',
          style: AppTextStyle.rubikRegular20.copyWith(color: AppColors.black),
        ),
        focusedPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.black),
        ),
        errorPinTheme: pinTheme.copyBorderWith(
          border: Border.all(color: AppColors.darkRed),
        ),
        length: 6,
        defaultPinTheme: pinTheme,
      ),
    );
  }
}
