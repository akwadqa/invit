import 'package:dio/dio.dart';
import 'package:invit/features/auth/signIn/domain/model/signin_response_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class SignInRemoteDataSource {
  final NetworkService _networkService;

  SignInRemoteDataSource(this._networkService);

  Future<ApiResponse<SigninResponseModel>> signIn(String phone) async {
    try {
      final data = FormData.fromMap({
        "mobile_no": phone,
        // "mobile_no": '30255377',
      });
      final response = await _networkService.post(
        ApiEndPoints.signIn,
        data: data,
        // queryParameters: {
        //   "mobile_no": phone,
        // },
      );

      if (response.data == null || response.statusCode != 200) {
        throw Exception('Request signIn failed');
      }

      return ApiResponse.fromJson(
        response.data,
        (json) => SigninResponseModel.fromJson((json as Map<String, dynamic>)),
        // (json) => SigninResponseModel.fromJson((json as Map<String, dynamic>)['validation']),
      );
    } catch (e) {
      Dev.logLine('Error in signIn: $e');
      rethrow;
    }
  }
}
