// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppMessagesModel _$AppMessagesModelFromJson(Map<String, dynamic> json) =>
    _AppMessagesModel(
      emailContent: json['content'] as String,
      subject: json['subject'] as String,
      creation: DateTime.parse(json['creation'] as String),
    );

Map<String, dynamic> _$AppMessagesModelToJson(_AppMessagesModel instance) =>
    <String, dynamic>{
      'content': instance.emailContent,
      'subject': instance.subject,
      'creation': instance.creation.toIso8601String(),
    };
