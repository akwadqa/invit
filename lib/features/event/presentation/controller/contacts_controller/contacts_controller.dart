import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/contacts_controller/contacts_state.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/features/event_details/presentation/controller/event_details_controller.dart';
import 'package:invit/features/guest/data/repository/guest_repository.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'contacts_controller.g.dart';

@riverpod
class ContactsController extends _$ContactsController {
  @override
  FutureOr<ContactsState> build(String? occasionId) {
    if (occasionId != null) {
      state = AsyncData(ContactsState.init());
      final list = ref
          .watch(eventDetailsControllerProvider(ocassionId: occasionId))
          .value
          ?.guestList!
          .where((guest) => guest.rsvpStatus == 'Not Sent')
          .toList();

      if (list != null && list.isNotEmpty) {
        final selected = convertGuestModelsToSelectedContacts(list);

        return ContactsState.init().copyWith(
          selectedContacts: selected,
        );
      } else {
        return ContactsState.init();
      }
    }
    return ContactsState.init();
  }

  Future<void> addNewContact(
      {required String firstName,
      required String lastName,
      required String phoneNumber,
      // required String code,
      required String? occasionId}) async {
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
        SelectedContact(contact: newContact, id: id, code: ''),
      ];

      state = AsyncData(
        state.value!.copyWith(
          selectedContacts: updatedSelected,
        ),
      );
      if (occasionId == null) {
        ref
            .read(createEventControllerProvider.notifier)
            .updateEvent(EventModel());
      } else {
        ref
            .read(
                updateEventControllerProvider(ocassionId: occasionId).notifier)
            .updateDataForEvent(EventModel());
      }
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  void incrementCount(SelectedContact contact, String? occasionId) {
    final currentState = state.value!;
    final updatedList = currentState.selectedContacts?.map((sc) {
      if (sc.id == contact.id) {
        return sc.copyWith(count: sc.count + 1);
      }
      return sc;
    }).toList();

    state = AsyncData(currentState.copyWith(selectedContacts: updatedList));

    if (occasionId == null) {
      ref
          .read(createEventControllerProvider.notifier)
          .updateEvent(EventModel());
    } else {
      ref
          .read(updateEventControllerProvider(ocassionId: occasionId).notifier)
          .updateDataForEvent(EventModel());
    }
  }

  void decrementCount(SelectedContact contact, String? occasionId) {
    final currentState = state.value!;
    final updatedList = currentState.selectedContacts?.map((sc) {
      if (sc.id == contact.id && sc.count > 0) {
        return sc.copyWith(count: sc.count - 1);
      }
      return sc;
    }).toList();

    state = AsyncData(currentState.copyWith(selectedContacts: updatedList));
    if (occasionId == null) {
      ref
          .read(createEventControllerProvider.notifier)
          .updateEvent(EventModel());
    } else {
      ref
          .read(updateEventControllerProvider(ocassionId: occasionId).notifier)
          .updateDataForEvent(EventModel());
    }
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
    final cleanContacts = contacts.where((c) => c.phones.isNotEmpty).toList();

    state = AsyncData(
      state.value!.copyWith(
        contacts: search == null
            ? cleanContacts
            : cleanContacts
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

  bool get hasDeviceContactsSelected {
    final currentState = state.value;
    if (currentState == null || currentState.selectedContacts.isEmpty)
      return false;

    final deviceContactIds = currentState.contacts.map((c) => c.id).toSet();

    return currentState.selectedContacts
        .any((selected) => deviceContactIds.contains(selected.contact.id));
  }

  void unselectAll() {
    final currentState = state.value!;
    state = AsyncData(currentState.copyWith(selectedContacts: []));
  }

  void selectAll() {
    final currentState = state.value!;
    List<SelectedContact> selectedList = currentState.selectedContacts!;
    final contacts = currentState.contacts;

    selectedList = contacts.map((contact) {
      final code = contact.phones.first.number.startsWith('+') ||
              contact.phones.first.number.replaceAll(' ', '').length > 11
          ? contact.phones.first.number.replaceAll(' ', '').substring(1, 4)
          : '974';

      final number = contact.phones.first.number.startsWith('+') ||
              contact.phones.first.number.replaceAll(' ', '').length > 11
          ? contact.phones.first.number.replaceAll(' ', '').substring(4)
          : contact.phones.first.number.startsWith('0')
              ? contact.phones.first.number.replaceAll(' ', '').substring(1)
              : contact.phones.first.number;

      final newContact = Contact(
        id: contact.id,
        displayName: contact.displayName,
        name: contact.name,
        phones: [Phone(number)],
        emails: contact.emails
            .map((e) => Email(e.address, label: e.label))
            .toList(),
      );

      return SelectedContact(
        contact: newContact,
        count: 0,
        id: const Uuid().v4(),
        code: code,
      );
    }).toList();

    state = AsyncData(currentState.copyWith(selectedContacts: selectedList));
  }

  void selectContact(Contact contact, String? occasionId) {
    final currentState = state.value!;
    List<SelectedContact> selectedList = currentState.selectedContacts!;
    final exists = selectedList.any((c) => c.contact.id == contact.id);

    if (exists) {
      selectedList =
          selectedList.where((c) => c.contact.id != contact.id).toList();
    } else {
      final code = contact.phones.first.number.startsWith('+') ||
              contact.phones.first.number.replaceAll(' ', '').length > 11
          ? contact.phones.first.number.replaceAll(' ', '').substring(1, 4)
          : '974';

      final number = contact.phones.first.number.startsWith('+') ||
              contact.phones.first.number.replaceAll(' ', '').length > 11
          ? contact.phones.first.number.replaceAll(' ', '').substring(4)
          : contact.phones.first.number.startsWith('0')
              ? contact.phones.first.number.replaceAll(' ', '').substring(1)
              : contact.phones.first.number;

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
          code: code,
        ),
      ];
    }
    if (occasionId == null) {
      ref
          .read(createEventControllerProvider.notifier)
          .updateEvent(EventModel());
    } else {
      ref
          .read(updateEventControllerProvider(ocassionId: occasionId).notifier)
          .updateDataForEvent(EventModel());
    }

    state = AsyncData(currentState.copyWith(selectedContacts: selectedList));
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
        fullName: s.contact.displayName,
        whatsappNumber: number,
        partySize: s.count,
      );
    }).toList();
  }

  List<SelectedContact> convertGuestModelsToSelectedContacts(
    List<GuestModel> guests,
  ) {
    final newList = guests.map((g) {
      String? first = g.firstName;
      String? last = g.lastName;

      if ((first == null || first.isEmpty) &&
          (last == null || last.isEmpty) &&
          g.fullName != null) {
        final parts = g.fullName!.trim().split(" ");
        first = parts.isNotEmpty ? parts.first : "";
        last = parts.length > 1 ? parts.sublist(1).join(" ") : "";
      }

      final number = g.whatsappNumber ?? "";

      final contact = Contact(
        id: const Uuid().v4(),
        name: Name(first: first ?? "", last: last ?? ""),
        phones: [Phone(number.substring(3))],
        displayName: "${first ?? ''} ${last ?? ''}".trim(),
      );

      return SelectedContact(
        contact: contact,
        count: g.partySize ?? 0,
        id: contact.id,
        code: g.whatsappNumber!.substring(0, 3),
      );
    }).toList();

    state = AsyncData(state.value!.copyWith(selectedContacts: newList));

    return newList;
  }

  void setSelectedContactsFromGuests(List<GuestModel> guests) {
    final newGusts = guests.map((g) {
      final fullName = g.fullName ?? '';
      final parts = fullName.split(' ');
      final first = parts.isNotEmpty ? parts.first : '';
      final last = parts.length > 1 ? parts.sublist(1).join(' ') : '';

      final contact = Contact()
        ..displayName = fullName
        ..name = Name(first: first, last: last)
        ..phones = [Phone(g.whatsappNumber!.substring(4))];

      return SelectedContact(
        id: const Uuid().v4(),
        contact: contact,
        count: g.partySize ?? 0,
        code: '9',
      );
    }).toList();

    state = AsyncData(state.value!.copyWith(selectedContacts: newGusts));
  }

  Future<UpdateGuestListResponse?> updateGuestList({
    required String occasionId,
  }) async {
    try {
      state = AsyncData(
        state.value!.copyWith(updateGuestListRespone: AsyncLoading()),
      );
      final repo = ref.read(guestRepositoryProvider);
      final response = await repo.updateGuestList(
        occasionId: occasionId,
        guests: setGuestListFromContacts()!,
      );

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            updateGuestListRespone: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );

        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          updateGuestListRespone: AsyncData(response.data!),
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(
          updateGuestListRespone: AsyncError(e.toString(), st),
        ),
      );
      return null;
    }
  }
}
