import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as google;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/map_controller/map_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';

class SelectLocationGoogleMap extends ConsumerWidget {
  const SelectLocationGoogleMap(this.mapController, this.id, {super.key});
  final String? id;
  final Completer<GoogleMapController> mapController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen( mapControllerProvider(id), (previous, next) async {
      if (next.value == null) return;

      final latLng = next.value!.latLng;
      final controller = await mapController.future;

      controller.animateCamera(
        google.CameraUpdate.newLatLng(
            google.LatLng(latLng.latitude, latLng.longitude)),
      );
    });
    if (id != null) {
      ref.listen(updateEventControllerProvider(ocassionId: id!),
          (previous, next) async {
         if (next.value == null) return;

        final lat = next.value?.updatedEvent?.mapLatitude;
        final lng = next.value?.updatedEvent?.mapLongitude;
        final controller = await mapController.future;

        controller.animateCamera(
          google.CameraUpdate.newLatLng(
              google.LatLng(double.parse(lat!), double.parse(lng!))),
        );
      });
    }

    // final lat = id == null
    //     ? ref.watch(mapControllerProvider).value!.latLng.latitude
    //     : ref
    //             .watch(updateEventControllerProvider(ocassionId: id!))
    //             .value!
    //             .updatedEvent!
    //             .mapLatitude ??
    //         '25.2854473';
    final lng = ref.watch( mapControllerProvider(id)).value?.latLng.longitude??0;
    final lat = ref.watch( mapControllerProvider(id)).value?.latLng.latitude??0;
    // final lng = id == null
    //     ? ref.watch(mapControllerProvider).value!.latLng.longitude
    //     : ref
    //             .watch(updateEventControllerProvider(ocassionId: id!))
    //             .value!
    //             .updatedEvent!
    //             .mapLongitude ??
    //         '51.53103979999999';
    LatLng lanlng = LatLng(
      lat,lng
      // double.parse(lat.toString()),
      // double.parse(lng.toString()),
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
        ref
            .read( mapControllerProvider(id).notifier)
            .changeLatlng(position.latitude, position.longitude);
        // id == null
        //     ? ref
        //         .read(mapControllerProvider.notifier)
        //         .changeLatlng(position.latitude, position.longitude)
        //     : ref
        //         .read(updateEventControllerProvider(ocassionId: id!).notifier)
        //         .changeLatlng(position.latitude, position.longitude);
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
