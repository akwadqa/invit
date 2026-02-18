// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';

class ContactsState {
  final List<SelectedContact> selectedContacts;
  
  final List<Contact> contacts;
  final AsyncValue<UpdateGuestListResponse>? updateGuestListRespone;

  ContactsState({
    required this.selectedContacts,
    required this.contacts,
    this.updateGuestListRespone,
  });

  factory ContactsState.init() => ContactsState(
        selectedContacts: [],
        contacts: [],
      );

  ContactsState copyWith({
    List<SelectedContact>? selectedContacts,
    List<Contact>? contacts,
    AsyncValue<UpdateGuestListResponse>? updateGuestListRespone,
  }) {
    return ContactsState(
      selectedContacts: selectedContacts ?? this.selectedContacts,
      contacts: contacts ?? this.contacts,
      updateGuestListRespone: updateGuestListRespone ?? this.updateGuestListRespone,
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
