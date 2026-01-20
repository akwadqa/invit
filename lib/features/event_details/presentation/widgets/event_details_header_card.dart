import 'package:flutter/material.dart';
import 'package:invit/features/event_details/domain/model/event_details_model.dart';
import 'package:invit/gen/assets.gen.dart';

class EventDetailsHeaderCard extends StatelessWidget {
  final EventDetailsModel event;

  const EventDetailsHeaderCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Assets.images.rectangle.image(height: 400,width: double.infinity,fit: BoxFit.fitWidth),
    );
  }
}

