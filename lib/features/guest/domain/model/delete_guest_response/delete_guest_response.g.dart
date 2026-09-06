// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_guest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteGuestsResponse _$DeleteGuestsResponseFromJson(
  Map<String, dynamic> json,
) => _DeleteGuestsResponse(
  deleted: (json['deleted'] as List<dynamic>).map((e) => e as String).toList(),
  notFound: (json['not_found'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$DeleteGuestsResponseToJson(
  _DeleteGuestsResponse instance,
) => <String, dynamic>{
  'deleted': instance.deleted,
  'not_found': instance.notFound,
};
