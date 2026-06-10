// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
      bundles: (json['bundles'] as List<dynamic>)
          .map((e) => BundleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredEvents: (json['featured_events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      occasionTypes: (json['occasion_types'] as List<dynamic>)
          .map((e) => OcationTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'bundles': instance.bundles,
      'events': instance.events,
      'featured_events': instance.featuredEvents,
      'occasion_types': instance.occasionTypes,
    };

_BundleModel _$BundleModelFromJson(Map<String, dynamic> json) => _BundleModel(
      bundleName: json['bundle_name'] as String?,
      price: json['price'] as num?,
      amount: json['amount'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BundleModelToJson(_BundleModel instance) =>
    <String, dynamic>{
      'bundle_name': instance.bundleName,
      'price': instance.price,
      'amount': instance.amount,
      'description': instance.description,
    };
