
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';

import 'guest_report_model.dart';

part 'all_events_model.freezed.dart';
part 'all_events_model.g.dart';
@freezed
abstract class AllEventsModel with _$AllEventsModel {
  const factory AllEventsModel({
    required List<EventModel> events,
    @JsonKey(name: 'guest_report') required GuestReportModel guestReport,
  }) = _AllEventsModel;

  factory AllEventsModel.fromJson(Map<String, dynamic> json) =>
      _$AllEventsModelFromJson(json);
}
