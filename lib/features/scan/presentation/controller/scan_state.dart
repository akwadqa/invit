// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';

import 'package:invit/features/scan/data/model/scan_qr_response/scan_qr_response.dart';
import 'package:invit/features/scan/data/model/user_scan_event_response/user_scan_event_response.dart';

class ScanState {
  final AsyncValue<ScanQrResponse>? scanQrResponse;
  final String? scannedCode;

  final AsyncValue<List<EventModel>>? userScanEventResponse;

  ScanState({
    required this.scanQrResponse,
    required this.scannedCode,
    required this.userScanEventResponse,
  });

  factory ScanState.init() => ScanState(
      scanQrResponse: null,
      userScanEventResponse: AsyncLoading(),
      scannedCode: null);

  ScanState copyWith({
    AsyncValue<ScanQrResponse>? scanQrResponse,
    String? scannedCode,
    AsyncValue<List<EventModel>>? userScanEventResponse,
  }) {
    return ScanState(
      scanQrResponse: scanQrResponse ?? this.scanQrResponse,
      scannedCode: scannedCode ?? this.scannedCode,
      userScanEventResponse: userScanEventResponse ?? this.userScanEventResponse,
    );
  }
}
