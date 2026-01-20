import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';

class SelectLocationGoogleMap extends ConsumerWidget {
  const SelectLocationGoogleMap(this.mapController, this.id, {super.key});
  final String? id;
  final Completer<google.GoogleMapController> mapController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(createEventControllerProvider, (previous, next) async {
      if (next?.value == null) return;

      final latLng = next!.value!.latLng;
      final controller = await mapController.future;

      controller.animateCamera(
        google.CameraUpdate.newLatLng(
            google.LatLng(latLng.latitude, latLng.longitude)),
      );
    });

    final lat =
        //  id == null
        //     ?
        ref.watch(createEventControllerProvider).value!.latLng.latitude;
    // : ref
    //       .watch(updateEventControllerProvider)
    //       .value!
    //       .updatedEvent!
    //       .mapLatitude!;
    final lng =
        // id == null
        //     ?
        ref.watch(createEventControllerProvider).value!.latLng.longitude;
    // : ref
    //       .watch(updateEventControllerProvider)
    //       .value!
    //       .updatedEvent!
    //       .mapLongitude!;
    LatLng lanlng = LatLng(
      double.parse(lat.toString()),
      double.parse(lng.toString()),
    );
    // LatLng lanlng = id == null
    //     ? ref.watch(addEventControllerProvider).value!.latLng
    //     : ref.watch(
    //         updateEventControllerProvider.select((val) {
    //           final lat = val.value!.updatedEvent!.mapLatitude;
    //           final lng = val.value!.updatedEvent!.mapLongitude;
    //           return LatLng(lat: double.parse(lat!), lng: double.parse(lng!));
    //         }),
    //       );
    final qatarLocation = google.CameraPosition(
      target: google.LatLng(lanlng.latitude, lanlng.longitude),
      zoom: 14.4746,
    );
    return GoogleMap(
      myLocationEnabled: false,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      onTap: (position) {
        // id == null
        //     ?
        ref
            .read(createEventControllerProvider.notifier)
            .changeLatlng(position.latitude, position.longitude);
        // : ref
        //       .read(updateEventControllerProvider.notifier)
        //       .changeLatlng(position.latitude, position.longitude);
      },
      markers: {
        Marker(
          markerId: google.MarkerId('value'),
          position: LatLng(lanlng.latitude, lanlng.longitude),
        ),
      },
      initialCameraPosition: qatarLocation,
      onMapCreated: (controller) {
        mapController.complete(controller);
      },
    );
  }
}
