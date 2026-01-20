// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:invit/features/home/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/home/event/domain/model/event_model/event_model.dart';

class CreateEventState {
  final List<SelectedContact> selectedContacts;
  final List<Contact> contacts;
  final EventModel eventModel;
  final AsyncValue<CreateEventResponse>? createEventResponse;
  final LatLng latLng;
  final AsyncValue<SelectedPlace>? selectedPlace;



  CreateEventState({
    required this.selectedContacts,
    required this.contacts,
    required this.eventModel,
    required this.createEventResponse,
    required this.latLng,
    this.selectedPlace,
  });

  factory CreateEventState.init() => CreateEventState(
      eventModel: EventModel(),
      latLng: LatLng(25.2854473, 51.53103979999999),
      selectedContacts: [],
      contacts: [],
      createEventResponse: null);

  CreateEventState copyWith({
    List<SelectedContact>? selectedContacts,
    List<Contact>? contacts,
    EventModel? eventModel,
    AsyncValue<CreateEventResponse>? createEventResponse,
    LatLng? latLng,
    AsyncValue<SelectedPlace>? selectedPlace,
  }) {
    return CreateEventState(
      selectedContacts: selectedContacts ?? this.selectedContacts,
      contacts: contacts ?? this.contacts,
      eventModel: eventModel ?? this.eventModel,
      createEventResponse: createEventResponse ?? this.createEventResponse,
      latLng: latLng ?? this.latLng,
      selectedPlace: selectedPlace ?? this.selectedPlace,
    );
  }
}

class SelectedContact extends Equatable {
  final Contact contact;
  final int count;
  final String id;
  final String? code;

  const SelectedContact({
    required this.contact,
    this.count = 0,
    this.code,
    required this.id,
  });

  SelectedContact copyWith({
    Contact? contact,
    int? count,
    String? id,
    String? code,
  }) {
    return SelectedContact(
      contact: contact ?? this.contact,
      count: count ?? this.count,
      id: id ?? this.id,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [id, contact, code, count];
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
