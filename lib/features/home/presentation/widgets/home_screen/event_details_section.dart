
import 'package:flutter/material.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_location.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_owner_name.dart';
import 'package:invit/features/home/presentation/widgets/home_screen/event_title.dart';

class EventDetailsSection extends StatelessWidget {
  const EventDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        spacing: 13,
        children: [
          EventTitle(),
          EventOwnerName(),
          EventLocation(),
        ],
      ),
    );
  }
}

