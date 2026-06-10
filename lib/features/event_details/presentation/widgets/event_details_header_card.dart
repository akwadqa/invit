import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';

class EventDetailsHeaderCard extends StatelessWidget {
  final EventModel event;

  const EventDetailsHeaderCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
        child: event.imageUrl?.isNotEmpty ?? false
            ? CachedNetworkImage(
                imageUrl: ServicesUrls.imageUrl + (event.imageUrl ?? ''),
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover)
            : SizedBox.shrink()
        // child:
        // Assets.images.rectangle
        //     .image(height: 400, width: double.infinity, fit: BoxFit.fitWidth),
        );
  }
}
