import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_report_model.freezed.dart';
part 'guest_report_model.g.dart';

@freezed
abstract class GuestReportModel with _$GuestReportModel {
  const factory GuestReportModel({
    @JsonKey(name: 'total_invitees') @Default(0) int totalInvitees,
    @JsonKey(name: 'not_sent') @Default(0) int notSent,
    @Default(0) int pending,
    @Default(0) int confirmed,
    @Default(0) int declined,
    @Default(0) int failed,
    @JsonKey(name: 'scanned_count') @Default(0) int scannedCount,
  }) = _GuestReportModel;

  factory GuestReportModel.fromJson(Map<String, dynamic> json) =>
      _$GuestReportModelFromJson(json);
}
