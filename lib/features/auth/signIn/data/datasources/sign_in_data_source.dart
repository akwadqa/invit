import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';
class SignInRemoteDataSource {
  final NetworkService _networkService;

  SignInRemoteDataSource(this._networkService);


Future<ApiResponse> signIn(String phone) async {
  try {
    final response = await _networkService.post(
      ApiEndPoints.signIn,
      queryParameters: {},
    );

    if (response.data == null || response.statusCode != 200) {
      throw Exception('Request signIn failed');
    }

    return ApiResponse.fromJson(
      response.data as Map<String, dynamic>,
      (json) => Null,
    );
  } catch (e) {
    Dev.logLine('Error in signIn: $e');
    rethrow;
  }
}
}
