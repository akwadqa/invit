// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventDetailsModel _$EventDetailsModelFromJson(Map<String, dynamic> json) =>
    _EventDetailsModel(
      occasionId: json['occasion_id'] as String,
      title: json['title'] as String,
      date: json['date'] as String?,
      time: json['time'] as String?,
      mapLink: json['map_link'] as String,
      imageUrl: json['image_url'] as String,
      inviteTemplate: json['invite_template'] as String?,
      confirmedTemplate: json['confirmed_template'] as String?,
      declinedTemplate: json['declined_template'] as String?,
      status: json['status'] as String,
      guests: (json['guests'] as List<dynamic>?)
              ?.map((e) => GuestModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GuestModel>[],
      guestReport: json['guest_report'] == null
          ? null
          : GuestReportModel.fromJson(
              json['guest_report'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventDetailsModelToJson(_EventDetailsModel instance) =>
    <String, dynamic>{
      'occasion_id': instance.occasionId,
      'title': instance.title,
      'date': instance.date,
      'time': instance.time,
      'map_link': instance.mapLink,
      'image_url': instance.imageUrl,
      'invite_template': instance.inviteTemplate,
      'confirmed_template': instance.confirmedTemplate,
      'declined_template': instance.declinedTemplate,
      'status': instance.status,
      'guests': instance.guests,
      'guest_report': instance.guestReport,
    };
