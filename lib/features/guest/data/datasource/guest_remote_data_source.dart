import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/guest/domain/model/add_guest_response/add_guest_response.dart';
import 'package:invit/features/guest/domain/model/delete_guest_response/delete_guest_response.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class GuestRemoteDataSource {
  final NetworkService _networkService;

  GuestRemoteDataSource(this._networkService);

  Future<ApiResponse<AddGuestResponse>> addGuest(
      String occasionId, List<GuestModel> guests) async {
    final data = FormData.fromMap({
      'occasion_id': occasionId,
      'guest_list': guests.map((e) => jsonEncode(e)).toList()
    });
    try {
      final response = await _networkService.post(
        ApiEndPoints.addGuest,
        data: data,
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => AddGuestResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<DeleteGuestsResponse>> deleteGuest(
      List<String> invitees) async {
    try {
      final data = FormData.fromMap({
        'invitees_list': jsonEncode(invitees),
      });
      final response =
          await _networkService.post(ApiEndPoints.deleteGuest, data: data);

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => DeleteGuestsResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<UpdateGuestListResponse>> updateGuestList({
    required String occasionId,
    required List<GuestModel> guests,
  }) async {
    try {
      final data = FormData.fromMap(
        {
          'occasion_id': occasionId,
          // 'guest_list': jsonEncode(guests.map((e) => e.toJson()).toList()),
          'guest_list': jsonEncode(guests),
        },
      );
      final response =
          await _networkService.post(ApiEndPoints.updateGuestList, data: data);
      return ApiResponse.fromJson(
        response.data,
        (json) =>
            UpdateGuestListResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
