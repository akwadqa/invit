import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/data/repository/event_repository.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
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
    final list = ref
        .watch(eventDetailsControllerProvider(ocassionId: ocassionId))
        .value
        ?.guests
        .where((guest) => guest.rsvpStatus == 'Not Sent')
        .toList();

    if (list != null) {
      final selected = convertGuestModelsToSelectedContacts(list);

      return UpdateEventState.init().copyWith(
        selectedContacts: selected,
      );
    } else {
      return UpdateEventState.init();
    }
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
      updateDataForEvent(state.value!.updatedEvent!);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
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
          guestList: setGuestListFromContacts() ?? current?.guestList,
        ),
      ),
    );
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

  List<GuestModel>? setGuestListFromContacts() {
    final selectedContacts = state.value!.selectedContacts;
    return selectedContacts?.map((s) {
      final nameParts = (s.contact.displayName).split(' ');
      final firstName = nameParts.isNotEmpty ? nameParts.first : null;
      final lastName =
          nameParts.length > 1 ? nameParts.sublist(1).join(' ') : null;

      //TODO : this need to fix for the cuontry code in the contacts:
      final number = (s.contact.phones.isNotEmpty)
          ? s.contact.phones.first.number.replaceAll(' ', '').length > 11
              ? s.contact.phones.first.number.replaceAll(' ', '')
              : '${s.code}${s.contact.phones.first.number.replaceAll(' ', '')}'
          : '';

      return GuestModel(
        firstName: firstName,
        lastName: lastName,
        fullName: '$firstName $lastName',
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

  // Future<LatLng?> getPlaceLocation(String placeId) async {
  //   final sdk = ref.read(placesSdkProvider);
  //   final result = await sdk.fetchPlace(placeId, fields: [PlaceField.Location]);

  //   final loc = result.place?.latLng;
  //   if (loc == null) return null;

  //   return LatLng( loc.lat, loc.lng);
  // }

  void changeLatlng(double lat, double lng) {
    updateDataForEvent(
      EventModel(mapLatitude: lat.toString(), mapLongitude: lng.toString()),
    );
  }

  Future<void> getPlaceInfoFromLatLng(String id) async {
    final lat = state.value!.updatedEvent?.mapLatitude ?? 25.2854473;
    final lng = state.value!.updatedEvent?.mapLongitude ?? 51.53103979999999;
    try {
      state = AsyncData(state.value!.copyWith(selectedPlace: AsyncLoading()));
      final apiKey = dotenv.env['MAPS_API_KEY'];
      if (apiKey == null) return;

      final url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$apiKey";

      final response = await Dio().get(url);

      if (response.statusCode != 200) return;

      final data = response.data;

      if (data["status"] != "OK") return;

      final result = data["results"][0];

      final locationName = cleanName(result["formatted_address"] ?? "");
      final placeId = result["place_id"] ?? "";

      final mapLink =
          "https://www.google.com/maps/search/?api=1&query=$lat,$lng";

      updateDataForEvent(
        EventModel(
          locationName: locationName,
          mapLatitude: lat.toString(),
          mapLongitude: lng.toString(),
        ),
      );

      state = AsyncData(
        state.value!.copyWith(
          selectedPlace: AsyncData(
            SelectedPlace(
              placeId: placeId,
              mapLink: mapLink,
              locationName: locationName,
            ),
          ),
        ),
      );
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(selectedPlace: AsyncError(e, st)),
      );
    }
  }

  String cleanName(String address) {
    final parts = address.split(',');
    if (parts.length > 1) {
      return parts.sublist(1).join(',').trim();
    }
    return address;
  }
}
