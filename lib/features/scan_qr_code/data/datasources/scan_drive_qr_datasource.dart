
import 'package:invit/features/scan_qr_code/domain/model/checkin_models.dart';
import 'package:invit/features/scan_qr_code/domain/model/gates_info_model.dart';
import 'package:invit/src/infrastructure/api/endpoint/api_endpoints.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/network_service.dart';

class ScanDriveQrDatasource {
  final NetworkService _networkService;

  ScanDriveQrDatasource(this._networkService);

  Future<ApiResponse<List<GatesInfoModel>>> getAllAvailableGates() async {
    try {
      final response = await _networkService.get(ApiEndPoints.getActiveGates);
      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map(
              (item) => GatesInfoModel.fromJson(item as Map<String, dynamic>),
            )
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }

  Future<ApiResponse<CheckinPayload>> fetchByQrCode({
    String? gateName,
    String? qrResult,
    String? inviteeId,
  }) async {
    final response = await _networkService.post(
      ApiEndPoints.scanQr,
      queryParameters: {
        "qr_code": qrResult,
        "gate": gateName,
        "invitee_id": inviteeId,
        "checkin_by": "Administrator",
      },
    );

    return ApiResponse.fromJson(
      Map<String, dynamic>.from(response.data as Map),
      (json) => CheckinPayload.fromAny(json),
    );
  }
}
