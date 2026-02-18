// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
    show AutocompletePrediction;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


class MapState {
  final LatLng latLng;
  final LatLng? initialLatLng;

  final AsyncValue<SelectedPlace>? selectedPlace;
  final AsyncValue<List<AutocompletePrediction>>? predictions;

  MapState(
      {required this.latLng,
      required this.initialLatLng,
      required this.selectedPlace,
      required this.predictions});

  factory MapState.init() => MapState(
        latLng: LatLng(25.2854473, 51.53103979999999),
        initialLatLng: null,
        predictions: null,
        selectedPlace: null,
      );

  MapState copyWith({
    LatLng? latLng,
    LatLng? initialLatLng,
    AsyncValue<SelectedPlace>? selectedPlace,
    AsyncValue<List<AutocompletePrediction>>? predictions,
  }) {
    return MapState(
      latLng: latLng ?? this.latLng,
      initialLatLng: initialLatLng ?? this.initialLatLng,
      selectedPlace: selectedPlace ?? this.selectedPlace,
      predictions: predictions ?? this.predictions,
    );
  }
}


class SelectedPlace {
  final String placeId;
  final String mapLink;
  final String locationName;

  SelectedPlace({
    required this.placeId,
    required this.mapLink,
    required this.locationName,
  });
}
