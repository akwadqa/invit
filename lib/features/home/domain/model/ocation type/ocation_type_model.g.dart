// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocation_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OcationTypeModel _$OcationTypeModelFromJson(Map<String, dynamic> json) =>
    _OcationTypeModel(
      image: json['image'] as String?,
      title: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$OcationTypeModelToJson(_OcationTypeModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.title,
      'color': instance.color,
    };
