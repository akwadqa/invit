// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:invit/features/guest/domain/model/add_guest_response/add_guest_response.dart';
import 'package:invit/features/guest/domain/model/delete_guest_response/delete_guest_response.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';

class GuestUiState {
  final int index;
  final AsyncValue<AddGuestResponse>? addGuestResponse;
  final AsyncValue<DeleteGuestsResponse>? deleteGuestsResponse;
  final AsyncValue<UpdateGuestListResponse>? updateGuestListResponse;

  GuestUiState({
    required this.index,
    required this.addGuestResponse,
    this.deleteGuestsResponse,
    this.updateGuestListResponse,
  });

  factory GuestUiState.init() => GuestUiState(
      index: 0, addGuestResponse: null, deleteGuestsResponse: null);

  GuestUiState copyWith({
    int? index,
    AsyncValue<AddGuestResponse>? addGuestResponse,
    AsyncValue<DeleteGuestsResponse>? deleteGuestsResponse,
    AsyncValue<UpdateGuestListResponse>? updateGuestListResponse,
  }) {
    return GuestUiState(
      index: index ?? this.index,
      addGuestResponse: addGuestResponse ?? this.addGuestResponse,
      deleteGuestsResponse: deleteGuestsResponse ?? this.deleteGuestsResponse,
      updateGuestListResponse:
          updateGuestListResponse ?? this.updateGuestListResponse,
    );
  }
}
