import 'package:flutter/material.dart';
// import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart'
//     show PlaceField;
import 'package:invit/features/event/data/repository/event_repository.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
      state.value?.updatedEvent?.dateTime ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      current.hour,
      current.minute,
    );

    updateDataForEvent(EventModel(dateTime: updated.toString()));
  }

  void updateEventTime(TimeOfDay newTime) {
    final current = DateTime.parse(
      state.value?.updatedEvent?.dateTime ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      current.year,
      current.month,
      current.day,
      newTime.hour,
      newTime.minute,
    );

    updateDataForEvent(EventModel(dateTime: updated.toString()));
  }

  void updateDataForEvent(EventModel newData) {
    final current = state.value?.updatedEvent;

    state = AsyncData(
      state.value!.copyWith(
        updatedEvent: EventModel(
          eventId: newData.eventId ?? current!.eventId,
          type: newData.type ?? current?.type,
          title: newData.title ?? current?.title,
          mapLink: newData.mapLink ?? current?.mapLink,
          mapLatitude: newData.mapLatitude ?? current!.mapLatitude,
          mapLongitude: newData.mapLongitude ?? current!.mapLongitude,
          locationName: newData.locationName ?? current!.locationName,
          dateTime: newData.dateTime ?? current?.dateTime,
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
