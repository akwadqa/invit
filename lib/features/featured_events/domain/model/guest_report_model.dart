import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_report_model.freezed.dart';
part 'guest_report_model.g.dart';

@freezed
abstract class GuestReportModel with _$GuestReportModel {
  const factory GuestReportModel({
    @JsonKey(name: 'total_invitees') required int totalInvitees,
    @JsonKey(name: 'not_sent') required int notSent,
    @JsonKey(name: 'pending') required int pending,
    @JsonKey(name: 'confirmed') required int confirmed,
    @JsonKey(name: 'declined') required int declined,
    @JsonKey(name: 'failed') required int failed,
    @JsonKey(name: 'scanned_count') required int scannedCount,
  }) = _GuestReportModel;

  factory GuestReportModel.fromJson(Map<String, dynamic> json) =>
      _$GuestReportModelFromJson(json);
}
