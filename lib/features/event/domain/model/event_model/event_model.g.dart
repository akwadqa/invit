// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventModel _$EventModelFromJson(Map<String, dynamic> json) => _EventModel(
      eventId: json['event_id'] as String?,
      dateTime: json['date_time'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      role: json['role'] as String?,
      mapLongitude: json['longitude'] as String?,
      mapLatitude: json['latitude'] as String?,
      mapLink: json['map_link'] as String?,
      locationName: json['location_name'] as String?,
      showQr: (json['show_qr'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      inviteTemplate: json['invite_template'] as String?,
      confirmedTemplate: json['confirmed_template'] as String?,
      declinedTemplate: json['declined_template'] as String?,
      workflowState: json['workflow_state'] as String?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      status: json['status'] as String?,
      guestList: (json['guest_list'] as List<dynamic>?)
          ?.map((e) => GuestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      guestReport: json['guest_report'] == null
          ? null
          : GuestReportModel.fromJson(
              json['guest_report'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventModelToJson(_EventModel instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'date_time': instance.dateTime,
      'title': instance.title,
      'type': instance.type,
      'language': instance.language,
      'role': instance.role,
      'longitude': instance.mapLongitude,
      'latitude': instance.mapLatitude,
      'map_link': instance.mapLink,
      'location_name': instance.locationName,
      'show_qr': instance.showQr,
      'image_url': instance.imageUrl,
      'invite_template': instance.inviteTemplate,
      'confirmed_template': instance.confirmedTemplate,
      'declined_template': instance.declinedTemplate,
      'workflow_state': instance.workflowState,
      'is_featured': instance.isFeatured,
      'status': instance.status,
      'guest_list': instance.guestList,
      'guest_report': instance.guestReport,
    };

_GuestModel _$GuestModelFromJson(Map<String, dynamic> json) => _GuestModel(
      inviteeId: json['invitee_id'] as String?,
      fullName: json['full_name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      whatsappNumber: json['whatsapp_number'] as String?,
      partySize: (json['party_size'] as num?)?.toInt(),
      rsvpStatus: json['rsvp_status'] as String?,
      replied: (json['replied'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GuestModelToJson(_GuestModel instance) =>
    <String, dynamic>{
      'invitee_id': instance.inviteeId,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'whatsapp_number': instance.whatsappNumber,
      'party_size': instance.partySize,
      'rsvp_status': instance.rsvpStatus,
      'replied': instance.replied,
    };
