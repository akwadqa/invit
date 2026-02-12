import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/guest/data/datasource/guest_remote_data_source.dart';
import 'package:invit/features/guest/domain/model/add_guest_response/add_guest_response.dart';
import 'package:invit/features/guest/domain/model/delete_guest_response/delete_guest_response.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../src/infrastructure/network/exception/dio_exceptions.dart';

part 'guest_repository.g.dart';

@Riverpod(keepAlive: true)
GuestRepository guestRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return GuestRepository(GuestRemoteDataSource(networkService));
}

class GuestRepository {
  final GuestRemoteDataSource _remoteDataSource;

  GuestRepository(this._remoteDataSource);

  Future<ApiResponse<AddGuestResponse>> addGuest(
      String occasionId, List<GuestModel> guests) async {
    final response = await _remoteDataSource.addGuest(occasionId, guests);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }

  Future<ApiResponse<DeleteGuestsResponse>> deleteGuest(
      List<String> invitees) async {
    final response = await _remoteDataSource.deleteGuest(invitees);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }
  Future<ApiResponse<UpdateGuestListResponse>> updateGuestList({
    required String occasionId,
    required List<GuestModel> guests,
  }) async {
    final response = await _remoteDataSource.updateGuestList(occasionId: occasionId, guests: guests);
  
    if (response.status == 200) {
      return response;
    }
  
    throw AppException(response.message);
  }
}
