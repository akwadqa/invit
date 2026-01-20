import 'package:dio/dio.dart';
import 'package:invit/features/scan/data/model/scan_qr_response/scan_qr_response.dart';
import 'package:invit/features/scan/data/model/user_scan_event_response/user_scan_event_response.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';

class ScanRemoteDateSource {
  final NetworkService _networkService;

  ScanRemoteDateSource(this._networkService);

  Future<ApiResponse<ScanQrResponse>> scanQr({
    required String qrCode,
    required String checkinBy,
    required String inviteeId,
  }) async {
    try {
     
      final params = {'qr_code': qrCode, 'occasion_id': inviteeId};
      final response = await _networkService.post(
        ApiEndPoints.scanQr,

        queryParameters: params,
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => ScanQrResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }

  Future<ApiResponse<UserScanEventResponse>> getUserScanEvent({
    required int page,
  }) async {
    try {
      final data = FormData.fromMap({'page_no': page.toString(), 'limit': 10});
      final response = await _networkService.get(
        ApiEndPoints.getScaned,
        data: data,
      );
      return ApiResponse.fromJson(
        response.data,
        (json) => UserScanEventResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }
}
