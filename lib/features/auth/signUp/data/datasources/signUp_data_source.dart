import 'package:invit/features/auth/signUp/domain/model/signUp_params.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class SignupDataSource {
  final NetworkService _networkService;

  SignupDataSource(this._networkService);


Future<ApiResponse> signUp(SignupParams params) async {
  try {
    final response = await _networkService.post(
      ApiEndPoints.signUp,
      queryParameters: params.toMap(),
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
