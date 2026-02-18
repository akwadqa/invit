// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';

class UpdateEventState {
  final EventModel? updatedEvent;

  final AsyncValue<CreateEventResponse>? createEventResponse;

  UpdateEventState({
    this.updatedEvent,
    this.createEventResponse,
  });

  factory UpdateEventState.init() => UpdateEventState(
      createEventResponse: null,
      updatedEvent: EventModel());

  UpdateEventState copyWith({
    EventModel? updatedEvent,
    List<Contact>? contacts,
    AsyncValue<CreateEventResponse>? createEventResponse,
    AsyncValue<UpdateGuestListResponse>? updateGuestListRespone,
  }) {
    return UpdateEventState(
      updatedEvent: updatedEvent ?? this.updatedEvent,
      createEventResponse: createEventResponse ?? this.createEventResponse,
    );
  }
}
