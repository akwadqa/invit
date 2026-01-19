import 'package:flutter/material.dart';
import 'package:invit/features/home/event/presentation/widgets/guest_list_screen/add_guest_manually_button.dart';
import 'package:invit/features/home/event/presentation/widgets/guest_list_screen/add_guest_manually_fields.dart';

class AddContactManuallyForm extends StatefulWidget {
  const AddContactManuallyForm({
    super.key,
  });

  @override
  State<AddContactManuallyForm> createState() => _AddContactManuallyFormState();
}

class _AddContactManuallyFormState extends State<AddContactManuallyForm> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController _name;
  late TextEditingController _phone;
  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _phone = TextEditingController();
  }

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 17,
      children: [
        AddGuestManuallyFields(
          name: _name,
          phone: _phone,
          formKey: formKey,
        ),
        AddGuestManuallyButton(
          name: _name,
          phone: _phone,
          formKey: formKey,
        )
      ],
    );
  }
}
