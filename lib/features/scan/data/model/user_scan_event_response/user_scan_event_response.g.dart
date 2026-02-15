// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_scan_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserScanEventResponse _$UserScanEventResponseFromJson(
        Map<String, dynamic> json) =>
    _UserScanEventResponse(
      occasionId: json['occasion_id'] as String,
      title: json['title'] as String,
      date: json['date'] as String,
      mapLink: json['map_link'] as String,
      imageUrl: json['image_url'] as String,
      inviteTemplate: json['invite_template'] as String?,
      confirmedTemplate: json['confirmed_template'] as String?,
      declinedTemplate: json['declined_template'] as String?,
      workflowState: json['workflow_state'] as String,
    );

Map<String, dynamic> _$UserScanEventResponseToJson(
        _UserScanEventResponse instance) =>
    <String, dynamic>{
      'occasion_id': instance.occasionId,
      'title': instance.title,
      'date': instance.date,
      'map_link': instance.mapLink,
      'image_url': instance.imageUrl,
      'invite_template': instance.inviteTemplate,
      'confirmed_template': instance.confirmedTemplate,
      'declined_template': instance.declinedTemplate,
      'workflow_state': instance.workflowState,
    };
