import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_qr_response.freezed.dart';
part 'scan_qr_response.g.dart';

@freezed
abstract class ScanQrResponse with _$ScanQrResponse {
  const factory ScanQrResponse({
    @JsonKey(name: 'invitee_id') required String inviteeId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'occasion_id') required String occasionId,
    @JsonKey(name: 'checked_in') required int checkedIn,
    @JsonKey(name: 'max_allowed') required int maxAllowed,
    @JsonKey(name: 'remaining_checkins') required int remainingCheckins,
  }) = _ScanQrResponse;

  factory ScanQrResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanQrResponseFromJson(json);
}
