// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllEventsModel _$AllEventsModelFromJson(Map<String, dynamic> json) =>
    _AllEventsModel(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      guestReport: GuestReportModel.fromJson(
        json['guest_report'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AllEventsModelToJson(_AllEventsModel instance) =>
    <String, dynamic>{
      'events': instance.events,
      'guest_report': instance.guestReport,
    };
