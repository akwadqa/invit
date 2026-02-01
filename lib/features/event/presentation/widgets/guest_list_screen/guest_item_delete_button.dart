import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:invit/features/event/presentation/widgets/guest_list_screen/delete_contact_alert.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class GuestItemDeleteButton extends StatelessWidget {
  const GuestItemDeleteButton({
    super.key, required this.contact,
  });
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDeleteDialog(context,contact),
      child: Container(
        alignment: Alignment.center,
        height: 36,
        padding: EdgeInsets.symmetric(horizontal: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.primary, width: 2),
        ),
        child: Assets.icons.deleteContactIc.svg(),
      ),
    );
  }

  Future<dynamic> _showDeleteDialog(BuildContext context, Contact contact) {
    return showDialog(
        context: context,
        fullscreenDialog: false,
        builder: (context) => DeleteContactAlert(contact));
  }
}
