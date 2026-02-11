// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_guest_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateGuestListResponse _$UpdateGuestListResponseFromJson(
        Map<String, dynamic> json) =>
    _UpdateGuestListResponse(
      occasionId: json['occasion_id'] as String,
      addedCount: (json['added_count'] as num).toInt(),
      skippedCount: (json['skipped_count'] as num).toInt(),
      addedInvitees: (json['added_invitees'] as List<dynamic>)
          .map((e) => AddedInviteeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateGuestListResponseToJson(
        _UpdateGuestListResponse instance) =>
    <String, dynamic>{
      'occasion_id': instance.occasionId,
      'added_count': instance.addedCount,
      'skipped_count': instance.skippedCount,
      'added_invitees': instance.addedInvitees,
    };

_AddedInviteeModel _$AddedInviteeModelFromJson(Map<String, dynamic> json) =>
    _AddedInviteeModel(
      inviteeId: json['invitee_id'] as String,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$AddedInviteeModelToJson(_AddedInviteeModel instance) =>
    <String, dynamic>{
      'invitee_id': instance.inviteeId,
      'full_name': instance.fullName,
    };
