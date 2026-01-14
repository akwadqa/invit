
import 'package:invit/features/featured_events/domain/model/all_events_model.dart';
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/features/notifications/domain/model/app_notifications_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';

class FeaturedEventsDatasource {
  final NetworkService _networkService;

  FeaturedEventsDatasource(this._networkService);

  Future<ApiResponse<List<AllEventsModel>>> getAllEvents(
    int page,
    String? eventType
  ) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.appNotification,
        queryParameters: {
          'page': page,

       if(eventType!=null) "event": eventType

        },
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                AllEventsModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
