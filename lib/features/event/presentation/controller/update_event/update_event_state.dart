// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';

class UpdateEventState {
  final EventModel? updatedEvent;
  final List<SelectedContact>? selectedContacts;

  final List<Contact>? contacts;
  final AsyncValue<SelectedPlace>? selectedPlace;
  final AsyncValue<CreateEventResponse>? createEventResponse;
  final AsyncValue<UpdateGuestListResponse>? updateGuestListRespone;

  UpdateEventState({
    this.updatedEvent,
    this.updateGuestListRespone,
    this.selectedContacts,
    this.contacts,
    this.selectedPlace,
    this.createEventResponse,
  });

  factory UpdateEventState.init() => UpdateEventState(
      contacts: [],
      createEventResponse: null,
      selectedContacts: [],
      selectedPlace: null,
      updatedEvent: EventModel());

  UpdateEventState copyWith({
    EventModel? updatedEvent,
    List<SelectedContact>? selectedContacts,
    List<Contact>? contacts,
    AsyncValue<SelectedPlace>? selectedPlace,
    AsyncValue<CreateEventResponse>? createEventResponse,
    AsyncValue<UpdateGuestListResponse>? updateGuestListRespone,
  }) {
    return UpdateEventState(
      updatedEvent: updatedEvent ?? this.updatedEvent,
      selectedContacts: selectedContacts ?? this.selectedContacts,
      contacts: contacts ?? this.contacts,
      selectedPlace: selectedPlace ?? this.selectedPlace,
      createEventResponse: createEventResponse ?? this.createEventResponse,
      updateGuestListRespone:
          updateGuestListRespone ?? this.updateGuestListRespone,
    );
  }
}
