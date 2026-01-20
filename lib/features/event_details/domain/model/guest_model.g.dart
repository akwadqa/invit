// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestModel _$GuestModelFromJson(Map<String, dynamic> json) => _GuestModel(
      inviteeId: json['invitee_id'] as String?,
      fullName: json['full_name'] as String?,
      whatsappNumber: json['whatsapp_number'] as String?,
      partySize: (json['party_size'] as num?)?.toInt() ?? 1,
      rsvpStatus: json['rsvp_status'] as String?,
      replied: (json['replied'] as num?)?.toInt() ?? 0,
      checkinCount: (json['checkin_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GuestModelToJson(_GuestModel instance) =>
    <String, dynamic>{
      'invitee_id': instance.inviteeId,
      'full_name': instance.fullName,
      'whatsapp_number': instance.whatsappNumber,
      'party_size': instance.partySize,
      'rsvp_status': instance.rsvpStatus,
      'replied': instance.replied,
      'checkin_count': instance.checkinCount,
    };
