import 'package:dio/dio.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

class PaymentRemoteDataSource {
  final NetworkService _networkService;

  PaymentRemoteDataSource(this._networkService);

  Future<ApiResponse<String>> getPaymentLink(String type, String local) async {
    try {
      final data = FormData.fromMap({'bundle': type, 'language': local});

      final response = await _networkService.get(
        ApiEndPoints.getPaymentLink,
        data: data,
      );

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as Map)['payment_url'],
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
