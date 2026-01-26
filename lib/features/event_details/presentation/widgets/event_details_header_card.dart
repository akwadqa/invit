import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:invit/features/event_details/domain/model/event_details_model.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';

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
        child: event.imageUrl.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: ServicesUrls.imageUrl + event.imageUrl,
                height: 400,
                width: double.infinity,
                fit: BoxFit.fitWidth)
            : SizedBox.shrink()
        // child:
        // Assets.images.rectangle
        //     .image(height: 400, width: double.infinity, fit: BoxFit.fitWidth),
        );
  }
}
