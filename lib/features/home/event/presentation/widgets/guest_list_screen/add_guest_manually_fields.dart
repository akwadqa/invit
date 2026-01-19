import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/validator/app_validation.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class AddGuestManuallyFields extends StatelessWidget {
  const AddGuestManuallyFields({
    super.key,
    required this.phone,
    required this.name,
    required this.formKey,
  });
  final TextEditingController phone, name;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .25),
              blurRadius: 4,
            )
          ]),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: name,
              validator: nameValidation(context),
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Assets.icons.fullNameIc.svg(),
                ),
                hintText: 'full_name'.tr(),
                hintStyle: AppTextStyle.rubikRegular14
                    .copyWith(color: AppColors.grayHint),
                filled: true,
                fillColor: AppColors.white,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
            Divider(
              color: AppColors.grayHint,
              height: 0,
            ),
            TextFormField(
              controller: phone,
              validator: nameValidation(context),
              cursorColor: AppColors.primary,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Assets.icons.phoneNumberIc.svg(),
                ),
                hintText: 'phone_number'.tr(),
                hintStyle: AppTextStyle.rubikRegular14
                    .copyWith(color: AppColors.grayHint),
                fillColor: AppColors.white,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}
