// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TemplateModel _$TemplateModelFromJson(Map<String, dynamic> json) =>
    _TemplateModel(
      name: json['name'] as String?,
      templateName: json['template_name'] as String?,
      occasionType: json['occasion_type'] as String?,
      headerType: json['header_type'] as String?,
      message: json['message'] as String?,
      image: json['image'] as String?,
      buttons: (json['buttons'] as List<dynamic>?)
          ?.map((e) => TemplateButton.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateModelToJson(_TemplateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'template_name': instance.templateName,
      'occasion_type': instance.occasionType,
      'header_type': instance.headerType,
      'message': instance.message,
      'image': instance.image,
      'buttons': instance.buttons,
    };

_TemplateButton _$TemplateButtonFromJson(Map<String, dynamic> json) =>
    _TemplateButton(
      buttonType: json['button_type'] as String?,
      buttonLabel: json['button_label'] as String?,
      actionType: json['action_type'] as String?,
      phoneNumber: json['phone_number'] as String?,
      websiteUrl: json['website_url'] as String?,
      flow: json['flow'],
      linkedTemplate: json['linked_template'] == null
          ? null
          : LinkedTemplate.fromJson(
              json['linked_template'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$TemplateButtonToJson(_TemplateButton instance) =>
    <String, dynamic>{
      'button_type': instance.buttonType,
      'button_label': instance.buttonLabel,
      'action_type': instance.actionType,
      'phone_number': instance.phoneNumber,
      'website_url': instance.websiteUrl,
      'flow': instance.flow,
      'linked_template': instance.linkedTemplate,
    };

_LinkedTemplate _$LinkedTemplateFromJson(Map<String, dynamic> json) =>
    _LinkedTemplate(
      name: json['name'] as String?,
      templateName: json['template_name'] as String?,
      headerType: json['header_type'] as String?,
      message: json['message'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$LinkedTemplateToJson(_LinkedTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'template_name': instance.templateName,
      'header_type': instance.headerType,
      'message': instance.message,
      'image': instance.image,
    };
