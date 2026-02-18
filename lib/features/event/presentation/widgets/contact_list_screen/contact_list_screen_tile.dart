import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_state.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';


class ContactListScreenTile extends StatelessWidget {
  const ContactListScreenTile({
    super.key,
    required this.contact,
    required this.selectedContacts,
    required this.onChange,
  });
  final Contact contact;
  final List<SelectedContact> selectedContacts;
  final void Function(bool?) onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        contact.displayName,
        style: AppTextStyle.rubikRegular16.copyWith(color: AppColors.black),
      ),
      subtitle: Directionality(
        textDirection: ui.TextDirection.ltr,
        child: Align(
          alignment: context.locale.languageCode == 'ar'
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text(
            contact.phones.isNotEmpty
                ? contact.phones.first.number
                : context.tr('no_phone'),
            style: AppTextStyle.rubikRegular16.copyWith(color: AppColors.black),
          ),
        ),
      ),
      trailing: Checkbox(
        fillColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary;
          }
          return AppColors.white;
        }),
        value: selectedContacts.any((c) {
          return c.contact.id == contact.id;
        }),

        onChanged: (val) {
          onChange(val);
        },
      ),
    );
  }

  String normalize(String s) {
    return s.replaceAll(RegExp(r'\D+'), '');
  }
}
