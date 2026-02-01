import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
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
}
