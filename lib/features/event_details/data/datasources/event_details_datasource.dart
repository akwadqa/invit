import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';

class EventDetailsDatasource {
  final NetworkService _networkService;

  EventDetailsDatasource(this._networkService);

  Future<ApiResponse<EventModel>> getEventDetails({required String occasionId}) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.getEventDetails,
        queryParameters: {"occasion_id": occasionId
        },
      );
      return ApiResponse.fromJson(response.data,
          (json) => EventModel.fromJson(json as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
