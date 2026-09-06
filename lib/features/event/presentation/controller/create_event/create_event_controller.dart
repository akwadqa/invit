import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:invit/features/event/data/repository/event_repository.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/invite_template/invite_template_model.dart';
import 'package:invit/features/event/domain/model/retry_bulk_response/retry_bulk_response.dart';
import 'package:invit/features/event/domain/model/template%20model/template_model.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_controller.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_event_controller.g.dart';

@Riverpod(keepAlive: true)
class CreateEventController extends _$CreateEventController {
  @override
  FutureOr<CreateEventState> build() {
    return CreateEventState.init();
  }

  Future<String?> createEvent(bool isConfirm) async {
    try {
      state = AsyncData(
        state.value!.copyWith(
          createEventResponse: AsyncLoading(),
          isConfirm: isConfirm,
        ),
      );
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.createEvent(state.value!.eventModel);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            createEventResponse: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(createEventResponse: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(createEventResponse: AsyncError(e, st)),
      );
      return null;
    }
  }

  Future<RetryBulkResponse?> retryFailed(String occasionId) async {
    try {
      state = AsyncData(state.value!.copyWith(resendFailed: AsyncLoading()));
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.resendFailedInvites(occasionId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            resendFailed: AsyncError(
              response.message ?? '',
              StackTrace.current,
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(resendFailed: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(resendFailed: AsyncError(e, st)));
      return null;
    }
  }

  Future<List<TemplateModel>?> getTemplates(String occasionType) async {
    try {
      state = AsyncData(state.value!.copyWith(templates: AsyncLoading()));
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.getTemplates(occasionType);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            templates: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(templates: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(templates: AsyncError(e, st)));
      return null;
    }
  }

  Future<EventModel?> confirmEvent(String occasionId) async {
    try {
      state = AsyncData(state.value!.copyWith(confirmEvent: AsyncLoading()));
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.confirmEvent(occasionId);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            confirmEvent: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(confirmEvent: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(confirmEvent: AsyncError(e, st)));
      return null;
    }
  }

  void updateEvent(EventModel newData) {
    final current = state.value?.eventModel ?? EventModel();
    state = AsyncData(
      state.value!.copyWith(
        eventModel: current.copyWith(
          type: newData.type ?? current.type,
          // type: 'Birthday',
          title: newData.title ?? current.title,
          dateTime: newData.dateTime ?? current.dateTime,
          language: newData.language ?? current.language ?? 'Arabic',
          locationName: newData.locationName ?? current.locationName,
          showQr: newData.showQr ?? current.showQr,
          image: newData.image ?? current.image,
          mapLatitude: newData.mapLatitude ?? current.mapLatitude,
          mapLongitude: newData.mapLongitude ?? current.mapLongitude,
          mapLink: newData.mapLink ?? current.mapLink,
          inviteTemplate: newData.inviteTemplate ?? current.inviteTemplate,
          guestList:
              ref
                  .read(contactsControllerProvider(null).notifier)
                  .setGuestListFromContacts() ??
              current.guestList,
        ),
      ),
    );

    log(current.toJson().toString());
  }

  void updateEventDate(DateTime newDate) {
    final current = DateTime.parse(
      state.value?.eventModel?.dateTime ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      current.hour,
      current.minute,
    );

    updateEvent(EventModel(dateTime: updated.toString()));
  }

  void updateEventTime(TimeOfDay newTime) {
    final current = DateTime.parse(
      state.value?.eventModel?.dateTime ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      current.year,
      current.month,
      current.day,
      newTime.hour,
      newTime.minute,
    );

    updateEvent(EventModel(dateTime: updated.toString()));
  }
}
