import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/data/data_source/event_data_source.dart';
import 'package:invit/features/event/domain/model/create_event_response/create_event_response.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/invite_template/invite_template_model.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:invit/src/logger/failure/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_repository.g.dart';

@Riverpod(keepAlive: true)
EventRepository eventRepository(Ref ref) {
  final netrowk = ref.watch(networkServiceProvider());
  return EventRepository(EventRemoteDataSource(netrowk));
}

class EventRepository {
  final EventRemoteDataSource _remoteDataSource;

  EventRepository(this._remoteDataSource);

  Future<ApiResponse<CreateEventResponse>> createEvent(
      EventModel params) async {
    final response = await _remoteDataSource.createEvent(params);

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.error);
  }

  Future<ApiResponse<List<InviteTemplateModel>>> getTemplate() async {
    final response = await _remoteDataSource.getTemplates();

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.error);
  }

  Future<ApiResponse<EventModel>> confirmEvent(String occasionId) async {
    final response = await _remoteDataSource.confirmEvent(occasionId);

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.error);
  }

  Future<ApiResponse<CreateEventResponse>> updateEvent(
    EventModel event,
  ) async {
    final response = await _remoteDataSource.updateEvent(event);

    if (response.status == 200) {
      return response;
    }

    throw AppException(message: response.error);
  }

  Future<dynamic> getLocationData(Ref ref, LatLng latlng) async {
    final response = await _remoteDataSource.getLocationData(ref,latlng);

    return response;
  }
}
