// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InviteTemplateModel _$InviteTemplateModelFromJson(Map<String, dynamic> json) =>
    _InviteTemplateModel(
      name: json['name'] as String,
      templateName: json['template_name'] as String,
      appTemplateImage: json['app_template_image'] as String?,
    );

Map<String, dynamic> _$InviteTemplateModelToJson(
  _InviteTemplateModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'template_name': instance.templateName,
  'app_template_image': instance.appTemplateImage,
};
