import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:invit/features/home/event/data/repository/event_repository.dart';
import 'package:invit/features/home/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/home/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'create_event_controller.g.dart';

@riverpod
class CreateEventController extends _$CreateEventController {
  @override
  FutureOr<CreateEventState> build() {
    return CreateEventState.init();
  }

  Future<void> addNewContact({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    // required String code,
  }) async {
    try {
      final id = Uuid().v4();

      final newContact = Contact(
        id: id,
        name: Name(first: firstName, last: lastName),
        phones: [Phone(phoneNumber)],
        displayName: "$firstName $lastName",
      );

      final currentSelected = state.value!.selectedContacts;

      final updatedSelected = [
        ...?currentSelected,
        SelectedContact(contact: newContact, id: const Uuid().v4()),
      ];

      state = AsyncData(
        state.value!.copyWith(
          selectedContacts: updatedSelected,
        ),
      );
      updateEvent(state.value!.eventModel);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  void incrementCount(SelectedContact contact) {
    final currentState = state.value!;
    final updatedList = currentState.selectedContacts?.map((sc) {
      if (sc.id == contact.id) {
        return sc.copyWith(count: sc.count + 1);
      }
      return sc;
    }).toList();

    state = AsyncData(currentState.copyWith(selectedContacts: updatedList));
  }

  void decrementCount(SelectedContact contact) {
    final currentState = state.value!;
    final updatedList = currentState.selectedContacts?.map((sc) {
      if (sc.id == contact.id && sc.count > 0) {
        return sc.copyWith(count: sc.count - 1);
      }
      return sc;
    }).toList();

    state = AsyncData(currentState.copyWith(selectedContacts: updatedList));
  }

  void deleteSelectedContact(Contact contact) {
    final currentState = state.value!;

    final updatedList = currentState.selectedContacts!
        .where((sc) => sc.contact.id != contact.id)
        .toList();

    state = AsyncData(currentState.copyWith(selectedContacts: updatedList));
  }

  Future<void> getContacts(String? search) async {
    state = AsyncLoading();

    final granted = await FlutterContacts.requestPermission();
    if (!granted) {
      state = AsyncError('The permission has denied', StackTrace.current);
      return;
    }

    final contacts = await FlutterContacts.getContacts(withProperties: true);
    state = AsyncData(
      state.value!.copyWith(
        contacts: search == null
            ? contacts
            : contacts
                .where(
                  (c) =>
                      c.displayName.toLowerCase().contains(
                            search.toLowerCase(),
                          ) ||
                      c.phones.any((p) => p.number.contains(search)),
                )
                .toList(),
      ),
    );
  }

  void selectContact(Contact contact) {
    final currentState = state.value!;
    List<SelectedContact> selectedList = currentState.selectedContacts!;
    final exists = selectedList.any((c) => c.contact.id == contact.id);

    if (exists) {
      selectedList =
          selectedList.where((c) => c.contact.id != contact.id).toList();
    } else {
      // final code =
      //     contact.phones.first.number.startsWith('+') ||
      //         contact.phones.first.number.replaceAll(' ', '').length > 11
      //     ? contact.phones.first.number.replaceAll(' ', '').substring(1, 4)
      //     : '974';

      final number = contact.phones.first.number;
      // contact.phones.first.number.startsWith('+') ||
      //     contact.phones.first.number.replaceAll(' ', '').length > 11
      // ? contact.phones.first.number.replaceAll(' ', '').substring(4)
      // : contact.phones.first.number.replaceAll(' ', '').substring(1);

      final newContact = Contact(
        id: contact.id,
        displayName: contact.displayName,
        name: contact.name,
        phones: [Phone(number)],
        emails: contact.emails
            .map((e) => Email(e.address, label: e.label))
            .toList(),
      );

      selectedList = [
        ...selectedList,
        SelectedContact(
          contact: newContact,
          count: 0,
          id: const Uuid().v4(),
          // code: code,
        ),
      ];
    }

    state = AsyncData(currentState.copyWith(selectedContacts: selectedList));
  }

  Future<CreateEventResponse?> createEvent() async {
    try {
      state =
          AsyncData(state.value!.copyWith(createEventResponse: AsyncLoading()));
      final repo = ref.read(eventRepositoryProvider);
      final response = await repo.createEvent(state.value!.eventModel);

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            createEventResponse: AsyncError(
          response.message ?? '',
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

  void updateEvent(EventModel newData) {
    final current = state.value?.eventModel ?? EventModel();

    // final firstType = ref
    //     .read(homeControllerProvider)
    //     .value
    //     ?.utilsResponse
    //     ?.value
    //     ?.eventTypes
    //     ?.first;

    final lang = state.value?.eventModel?.language ?? 'Arabic';

    // final firsTemplate = ref
    //     .read(homeControllerProvider)
    //     .value
    //     ?.utilsResponse
    //     ?.value
    //     ?.templates
    //     ?.firstWhere((e) => lang.toLowerCase().contains(e.language ?? 'ar'));

    state = AsyncData(
      state.value!.copyWith(
        eventModel: current.copyWith(
          // type: newData.type ?? firstType,
          type: 'Birthday',
          title: newData.title ?? current.title,
          date: newData.date ?? current.date,
          language: newData.language ?? current.language ?? 'Arabic',
          locationName: newData.locationName ?? current.locationName,
          showQr: newData.showQr ?? current.showQr,
          image: newData.image ?? current.image,
          mapLatitude: newData.mapLatitude ?? current.mapLatitude,
          mapLongitude: newData.mapLongitude ?? current.mapLongitude,
          mapLink: 'g',
          // operators: newData.operators ?? state.value!.operators,
          // handlers: newData.handlers ?? state.value!.handlers,

          // inviteTemplate:
          //     newData.inviteTemplate ??
          //     current.inviteTemplate ??
          //     firsTemplate?.name,
          guestList: setGuestListFromContacts() ?? current.guestList,
        ),
      ),
    );
  }

  List<GuestModel>? setGuestListFromContacts() {
    final selectedContacts = state.value!.selectedContacts;
    return selectedContacts?.map((s) {
      final nameParts = (s.contact.displayName).split(' ');
      final firstName = nameParts.isNotEmpty ? nameParts.first : null;
      final lastName =
          nameParts.length > 1 ? nameParts.sublist(1).join(' ') : null;

      final number = (s.contact.phones.isNotEmpty)
          ? s.contact.phones.first.number.replaceAll(' ', '').length > 11
              ? s.contact.phones.first.number.replaceAll(' ', '')
              : '${s.code}${s.contact.phones.first.number.replaceAll(' ', '')}'
          : null;

      return GuestModel(
        firstName: firstName,
        lastName: lastName,
        whatsappNumber: number,
        partySize: s.count,
      );
    }).toList();
  }

  void updateEventDate(DateTime newDate) {
    final current = DateTime.parse(
      state.value?.eventModel?.date ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      current.hour,
      current.minute,
    );

    updateEvent(EventModel(date: updated.toString()));
  }

  void updateEventTime(TimeOfDay newTime) {
    final current = DateTime.parse(
      state.value?.eventModel?.date ?? DateTime.now().toString(),
    );

    final updated = DateTime(
      current.year,
      current.month,
      current.day,
      newTime.hour,
      newTime.minute,
    );

    updateEvent(EventModel(date: updated.toString()));
  }
}
