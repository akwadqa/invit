import 'package:dio/dio.dart';
import 'package:invit/features/scan/data/data_source/scan_remote_date_source.dart';
import 'package:invit/features/scan/data/model/user_scan_event_response/user_scan_event_response.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/scan_qr_response/scan_qr_response.dart';


part 'scan_respository.g.dart';

@riverpod
ScanRespository scanRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return ScanRespository(ScanRemoteDateSource(networkService));
}

class ScanRespository {
  final ScanRemoteDateSource remoteDateSource;

  ScanRespository(this.remoteDateSource);

  Future<ApiResponse<ScanQrResponse>> scanQr({
    required String qrCode,
    required String checkinBy,
    required String inviteeId,
  }) async {
    try {
      final respone = await remoteDateSource.scanQr(
        qrCode: qrCode,
        checkinBy: checkinBy,
        inviteeId: inviteeId,
      );
      return respone;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<ApiResponse<UserScanEventResponse>> getUserScanEvent({
    required int page,
  }) async {
    try {
      final respone = await remoteDateSource.getUserScanEvent(page: page);
      return respone;
    } on DioException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
