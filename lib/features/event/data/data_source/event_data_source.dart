import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/invite_template/invite_template_model.dart';
import 'package:invit/features/event/domain/model/retry_bulk_response/retry_bulk_response.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class EventRemoteDataSource {
  final NetworkService _networkService;

  EventRemoteDataSource(this._networkService);

  Future<ApiResponse<String>> createEvent(EventModel event) async {
    try {
      final data = FormData.fromMap({
        ...event.toJson(),
        ...{
          if (event.guestList != null && (event.guestList?.isNotEmpty ?? false))
            'guest_list': jsonEncode(
              event.guestList!.map((e) => e.toJson()).toList(),
            ),
        },
        ...{
          ...{
            if (event.image != null)
              'image': await MultipartFile.fromFile(event.image!.path),
          },
        }
      });

      final response = await _networkService.post(
        ApiEndPoints.createEvent,
        data: data,
        // queryParameters: {},
      );

      if (response.data == null || response.statusCode > 201) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) =>
            CreateEventResponse.fromJson(json as Map<String, dynamic>).eventId!,
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<List<InviteTemplateModel>>> getTemplates() async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.getTemplates,
        // queryParameters: {
        // 'page': page,
        // },
      );

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                InviteTemplateModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }

  Future<ApiResponse<EventModel>> confirmEvent(String occasionId) async {
    try {
      final data = FormData.fromMap({'occasion_id': occasionId});
      final response = await _networkService.post(
        ApiEndPoints.confirmEvent,
        data: data,
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => EventModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logLine('Error in submitData: e');
      rethrow;
    }
  }

  Future<ApiResponse<RetryBulkResponse>> resendFailue(String occasionId) async {
    try {
      final data = FormData.fromMap({'occasion_id': occasionId});
      final response = await _networkService.post(
        ApiEndPoints.resendFailed,
        data: data,
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => RetryBulkResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }

  Future<ApiResponse<CreateEventResponse>> updateEvent(
    EventModel event,
  ) async {
    try {
      final data = FormData.fromMap({
        'occasion_id': event.eventId,
        'type': 'Birthday',
        if (event.image != null)
          'image': await MultipartFile.fromFile(event.image!.path),
        ...(event.toJson()
          ..remove(event.imageUrl == null || (event.imageUrl?.isEmpty ?? true)
              ? 'image_url'
              : null)
          ..remove('type')),
      });
      final response = await _networkService.post(
        ApiEndPoints.updateEvent,
        data: data,
      );
      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }
      return ApiResponse.fromJson(
        response.data,
        (json) => CreateEventResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      Dev.logLine('Error in submitData: $e');
      rethrow;
    }
  }

  Future<dynamic> getLocationData(Ref ref, LatLng latlng) async {
    try {
      final apiKey = dotenv.env['MAPS_API_KEY'];
      if (apiKey == null) throw Exception('Request failed');
      final url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=${latlng.latitude},${latlng.longitude}&key=$apiKey";

      final response = await ref.read(dioProvider).get(url);
      if (response.statusCode != 200) throw Exception('Request failed');

      final data = response.data;
      if (data["status"] != "OK") throw Exception('Request failed');
      return data["results"][0];
    } catch (e) {
      debugPrint('Error in getData: e');
      rethrow;
    }
  }
}
