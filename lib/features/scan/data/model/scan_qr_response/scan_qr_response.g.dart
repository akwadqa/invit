// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_qr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScanQrResponse _$ScanQrResponseFromJson(Map<String, dynamic> json) =>
    _ScanQrResponse(
      inviteeId: json['invitee_id'] as String,
      fullName: json['full_name'] as String,
      occasionId: json['occasion_id'] as String,
      checkedIn: (json['checked_in'] as num).toInt(),
      maxAllowed: (json['max_allowed'] as num).toInt(),
      remainingCheckins: (json['remaining_checkins'] as num).toInt(),
    );

Map<String, dynamic> _$ScanQrResponseToJson(_ScanQrResponse instance) =>
    <String, dynamic>{
      'invitee_id': instance.inviteeId,
      'full_name': instance.fullName,
      'occasion_id': instance.occasionId,
      'checked_in': instance.checkedIn,
      'max_allowed': instance.maxAllowed,
      'remaining_checkins': instance.remainingCheckins,
    };
