import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/invite_template/invite_template_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class EventRemoteDataSource {
  final NetworkService _networkService;

  EventRemoteDataSource(this._networkService);

  Future<ApiResponse<CreateEventResponse>> createEvent(EventModel event) async {
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
          //   if (event.operators != null && (event.operators?.isNotEmpty ?? false))
          //     'operator_list': jsonEncode(
          //       event.operators!.map((e) => e.whatsappNumber).toList(),
          //     ),
          // },
          // ...{
          //   if (event.handlers != null && (event.handlers?.isNotEmpty ?? false))
          //     'handler_list': jsonEncode(
          //       event.handlers!.map((e) => e.toJson()).toList(),
          //     ),
          // },
          ...{'time': '10:19'},
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

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request failed');
      }

      return ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => CreateEventResponse.fromJson(json as Map<String, dynamic>),
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

  Future<ApiResponse<CreateEventResponse>> updateEvent(
    EventModel event,
  ) async {
    try {
      final data = FormData.fromMap({
        'occasion_id': event.occasionId,
        'time': '10:10',
        'image': event.image != null
            ? await MultipartFile.fromFile(event.image!.path)
            : null,
        ...(event.toJson()..remove('image_url')),
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
