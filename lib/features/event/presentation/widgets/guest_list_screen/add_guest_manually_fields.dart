import 'dart:ui' as ui;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/shared_widgets/arabic_number_input_formatter.dart';
import 'package:invit/src/core/utils/validator/app_validation.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class AddGuestManuallyFields extends StatefulWidget {
  const AddGuestManuallyFields({
    super.key,
    required this.phone,
    required this.name,
    required this.formKey,
  });
  final TextEditingController phone, name;
  final GlobalKey<FormState> formKey;

  @override
  State<AddGuestManuallyFields> createState() => _AddGuestManuallyFieldsState();
}

class _AddGuestManuallyFieldsState extends State<AddGuestManuallyFields> {
  late final TextEditingController _nationalController;

  @override
  void initState() {
    super.initState();
    _nationalController = TextEditingController();
  }

  @override
  void dispose() {
    _nationalController.dispose();
    super.dispose();
  }
 void _updateFullPhone(String countryCode) {
    final number = _nationalController.text.startsWith('0')
        ? _nationalController.text.substring(1)
        : _nationalController.text;
    final code =
        countryCode.startsWith('+') ? countryCode.substring(1) : countryCode;
    final full = '$code$number';
    widget.phone.value = TextEditingValue(
      text: full,
      selection: TextSelection.collapsed(offset: full.length),
    );
  }

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
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.name,
              validator: nameValidation(context),
              cursorColor: AppColors.primary,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Assets.icons.fullNameIc.svg(),
                ),
                hintText: 'full_name'.tr(),
                hintStyle: AppTextStyle.rubikRegular14
                    .copyWith(color: AppColors.grayHint),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
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
            Directionality(
              textDirection: ui.TextDirection.ltr,
              child: IntlPhoneField(
                autovalidateMode: AutovalidateMode.onUnfocus,
                invalidNumberMessage: context.tr('invalidNumber'),
                controller: _nationalController,
                initialCountryCode: 'QA',
                onSaved: (newValue) {
                  _updateFullPhone(newValue?.countryCode ?? '');
                },
                onChanged: (PhoneNumber value) {
                  _updateFullPhone(value.countryCode);
                },
                onCountryChanged: (country) {
                  _updateFullPhone('+${country.dialCode}');
                },
                validator: mobileNumberValidationIntl(context),
                dropdownIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: AppColors.black,
                ),
                cursorColor: AppColors.primary,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  ArabicNumberInputFormatter(),
                ],
                flagsButtonPadding: EdgeInsets.fromLTRB(4, 14, 6, 14),
                dropdownIconPosition: IconPosition.trailing,
                dropdownTextStyle: AppTextStyle.rubikRegular14.copyWith(
                  color: AppColors.black,
                ),
                keyboardType: TextInputType.phone,
                style: AppTextStyle.rubikRegular14.copyWith(
                  color: AppColors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  // hintText: 'phone_number'.tr(),
                  hintText: '000-000-00',
                  hintStyle: AppTextStyle.rubikRegular14
                      .copyWith(color: AppColors.grayHint),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                  errorStyle: TextStyle(height: 0, fontSize: 0),
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
