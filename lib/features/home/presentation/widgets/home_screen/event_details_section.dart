import 'package:flutter/material.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_location.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_owner_name.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_title.dart';

class EventDetailsSection extends StatelessWidget {
  final EventModel? event;

  const EventDetailsSection({super.key, this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        spacing: 13,
        children: [
          EventTitle(title:event?.title, type: event?.type,),
          EventOwnerName(owner: event?.role,),
          EventLocation(location: event?.locationName),
        ],
      ),
    );
  }
}

