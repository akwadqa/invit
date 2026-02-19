// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:equatable/equatable.dart';
// import 'package:flutter_contacts/flutter_contacts.dart';
// import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
  //  show AutocompletePrediction;
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/invite_template/invite_template_model.dart';

class CreateEventState {
  final EventModel eventModel;
  final AsyncValue<CreateEventResponse>? createEventResponse;
  final AsyncValue<List<InviteTemplateModel>>? templates;
  final AsyncValue<EventModel>? confirmEvent;
  final bool isConfirm;

  CreateEventState({
    required this.eventModel,
    required this.createEventResponse,
    required this.templates,
    required this.confirmEvent,
    required this.isConfirm,
  });

  factory CreateEventState.init() => CreateEventState(
      eventModel: EventModel(),
      confirmEvent: null,
      templates: AsyncLoading(),
      isConfirm: false,
      createEventResponse: null);

  CreateEventState copyWith({
    EventModel? eventModel,
    AsyncValue<CreateEventResponse>? createEventResponse,
    AsyncValue<List<InviteTemplateModel>>? templates,
    AsyncValue<EventModel>? confirmEvent,
    bool? isConfirm,
  }) {
    return CreateEventState(
      eventModel: eventModel ?? this.eventModel,
      createEventResponse: createEventResponse ?? this.createEventResponse,
      templates: templates ?? this.templates,
      confirmEvent: confirmEvent ?? this.confirmEvent,
      isConfirm: isConfirm ?? this.isConfirm,
    );
  }
}
