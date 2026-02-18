import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
    show PlaceField;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/data/repository/event_repository.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_state.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/features/guest/data/repository/guest_repository.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'update_event_controller.g.dart';

@riverpod
class UpdateEventController extends _$UpdateEventController {
  @override
  FutureOr<UpdateEventState> build({required String ocassionId}) {
    state = AsyncData(UpdateEventState.init());
    return state.value!;
  }

  Future<CreateEventResponse?> updateEvent() async {
    try {
      state =
          AsyncData(state.value!.copyWith(createEventResponse: AsyncLoading()));
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.updateEvent(state.value!.updatedEvent!);

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            createEventResponse: AsyncError(
          response.message ?? 'Something went wrong',
          StackTrace.fromString(response.message ?? ''),
        )));
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          createEventResponse: AsyncData(response.data!),
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
          state.value!.copyWith(createEventResponse: AsyncError(e, st)));
      return null;
    }
  }

  void updateEventDate(DateTime newDate) {
    final current = DateTime.parse(
      state.value?.updatedEvent?.date ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      current.hour,
      current.minute,
    );

    updateDataForEvent(EventModel(date: updated.toString()));
  }

  void updateEventTime(TimeOfDay newTime) {
    final current = DateTime.parse(
      state.value?.updatedEvent?.date ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      current.year,
      current.month,
      current.day,
      newTime.hour,
      newTime.minute,
    );

    updateDataForEvent(EventModel(date: updated.toString()));
  }

  void updateDataForEvent(EventModel newData) {
    final current = state.value?.updatedEvent;

    state = AsyncData(
      state.value!.copyWith(
        updatedEvent: EventModel(
          occasionId: newData.occasionId ?? current!.occasionId,
          type: newData.type ?? current?.type,
          title: newData.title ?? current?.title,
          mapLink: newData.mapLink ?? current?.mapLink,
          mapLatitude: newData.mapLatitude ?? current!.mapLatitude,
          mapLongitude: newData.mapLongitude ?? current!.mapLongitude,
          locationName: newData.locationName ?? current!.locationName,
          date: newData.date ?? current?.date,
          language: newData.language ?? current?.language,
          image: newData.image ?? current?.image,
          imageUrl: newData.imageUrl ?? current?.imageUrl,
          inviteTemplate: newData.inviteTemplate ?? current?.inviteTemplate,
          confirmedTemplate:
              newData.confirmedTemplate ?? current?.confirmedTemplate,
          declinedTemplate:
              newData.declinedTemplate ?? current?.declinedTemplate,
        ),
      ),
    );
  }
}
