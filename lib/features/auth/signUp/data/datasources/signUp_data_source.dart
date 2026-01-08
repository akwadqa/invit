import 'package:dio/dio.dart';
import 'package:invit/features/auth/signUp/domain/model/signUp_params.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/failure/exceptions/app_exception.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class SignupDataSource {
  final NetworkService _networkService;

  SignupDataSource(this._networkService);
  Future<ApiResponse<void>> signUp(SignupParams params) async {
    try {
      final ApiResponse
       response = await _networkService.post(
        ApiEndPoints.signUp,
        data: params.toMap(),
      );
          if (response.data == null || response.error==1) {
      throw Exception('Request signIn failed');
    }
      // if (response.status == 200) {
      Dev.logMap(response as Map<String,dynamic> );
        return ApiResponse.fromJson(
      response  as Map<String,dynamic> ,
      (json) =>json,
        );
      // } else {
      //   throw AppException(message: response.message);
      // } 
    } on DioException catch (e) {
      String message = 'Something went wrong';

      final response = e.response;

      if (response != null) {
        final data = response.data;

        if (data is Map<String, dynamic>) {
          message = data['message']?.toString() ?? message;
        } else if (data is String) {
          message = data;
        }
      }

      // Fallback if everything else fails
      message = message.isNotEmpty ? message : (e.message ?? message);

      Dev.logLine('FINAL backend message: ${e.message}');
      Dev.logLine('FINAL backend message: ${e.response?.statusMessage}');
      Dev.logLine('FINAL backend message: $message');

      throw AppException(message: message);
    } catch (e) {
      throw AppException(message: 'Unexpected error occurred');
    }
  }
}
