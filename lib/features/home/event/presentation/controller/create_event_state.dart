// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:invit/features/home/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/home/event/domain/model/event_model/event_model.dart';

class CreateEventState {
  final List<SelectedContact> selectedContacts;
  final List<Contact> contacts;
  final EventModel eventModel;
  final AsyncValue<CreateEventResponse>? createEventResponse;

  CreateEventState({
    required this.selectedContacts,
    required this.contacts,
    required this.eventModel,
    required this.createEventResponse,
  });

  factory CreateEventState.init() => CreateEventState(
      eventModel: EventModel(),
      selectedContacts: [],
      contacts: [],
      createEventResponse: null);

  CreateEventState copyWith({
    List<SelectedContact>? selectedContacts,
    List<Contact>? contacts,
    EventModel? eventModel,
    AsyncValue<CreateEventResponse>? createEventResponse,
  }) {
    return CreateEventState(
      selectedContacts: selectedContacts ?? this.selectedContacts,
      contacts: contacts ?? this.contacts,
      eventModel: eventModel ?? this.eventModel,
      createEventResponse: createEventResponse ?? this.createEventResponse,
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
