// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_guest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddGuestResponse _$AddGuestResponseFromJson(Map<String, dynamic> json) =>
    _AddGuestResponse(
      occasionId: json['occasion_id'] as String,
      createdInvitees: (json['created_invitees'] as List<dynamic>)
          .map((e) => CreatedInviteeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      duplicates: (json['duplicates'] as List<dynamic>)
          .map((e) => CreatedInviteeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddGuestResponseToJson(_AddGuestResponse instance) =>
    <String, dynamic>{
      'occasion_id': instance.occasionId,
      'created_invitees': instance.createdInvitees,
      'duplicates': instance.duplicates,
    };

_CreatedInviteeModel _$CreatedInviteeModelFromJson(Map<String, dynamic> json) =>
    _CreatedInviteeModel(
      inviteeId: json['invitee_id'] as String,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$CreatedInviteeModelToJson(
        _CreatedInviteeModel instance) =>
    <String, dynamic>{
      'invitee_id': instance.inviteeId,
      'full_name': instance.fullName,
    };
