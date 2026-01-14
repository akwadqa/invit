
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/features/notifications/domain/model/app_notifications_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';

class MessagesDatasource {
  final NetworkService _networkService;

  MessagesDatasource(this._networkService);

  Future<ApiResponse<List<AppMessagesModel>>> getAllmessages(
    int page,
    String? search
  ) async {
    try {
      final response = await _networkService.get(
        ApiEndPoints.appNotification,
        queryParameters: {
          'page': page,
        "for_user": "test@email.com",

       if(search!=null) "search": search

        },
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((item) =>
                AppMessagesModel.fromJson(item as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
