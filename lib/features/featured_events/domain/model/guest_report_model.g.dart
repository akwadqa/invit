// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestReportModel _$GuestReportModelFromJson(Map<String, dynamic> json) =>
    _GuestReportModel(
      totalInvitees: (json['total_invitees'] as num).toInt(),
      notSent: (json['not_sent'] as num).toInt(),
      pending: (json['pending'] as num).toInt(),
      confirmed: (json['confirmed'] as num).toInt(),
      declined: (json['declined'] as num).toInt(),
      failed: (json['failed'] as num).toInt(),
      scannedCount: (json['scanned_count'] as num).toInt(),
    );

Map<String, dynamic> _$GuestReportModelToJson(_GuestReportModel instance) =>
    <String, dynamic>{
      'total_invitees': instance.totalInvitees,
      'not_sent': instance.notSent,
      'pending': instance.pending,
      'confirmed': instance.confirmed,
      'declined': instance.declined,
      'failed': instance.failed,
      'scanned_count': instance.scannedCount,
    };
