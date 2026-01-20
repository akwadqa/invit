import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import '../../domain/model/guest_model.dart';

class GuestListSection extends StatelessWidget {
  final List<GuestModel> guests;

  const GuestListSection({
    super.key,
    required this.guests,
  });

  @override
  Widget build(BuildContext context) {
    if (guests.isEmpty) {
      return  Text('no_guests_added_yet'.tr(),
         style: AppTextStyle.rubikSemiBold20
                    .copyWith(color: AppColors.primary)
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
                Text( 'guests'.tr(),
                style: AppTextStyle.rubikMedium16
                    .copyWith(color: AppColors.primary)),
    

        ...guests.map(
          (guest) => Card(
            child: ListTile(
              title: Text(guest.fullName ?? 'name'),
              subtitle: Text(guest.rsvpStatus ?? 'status'),
              trailing: Text('x${guest.partySize}'),
            ),
          ),
        ),
      ],
    );
  }
}
