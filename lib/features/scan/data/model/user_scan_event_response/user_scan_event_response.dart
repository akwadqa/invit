import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';

part 'user_scan_event_response.freezed.dart';
part 'user_scan_event_response.g.dart';

@freezed
abstract class UserScanEventResponse with _$UserScanEventResponse {
  const factory UserScanEventResponse({
    @JsonKey(name: 'events') required List<EventModel> events,
  }) = _UserScanEventResponse;

  factory UserScanEventResponse.fromJson(Map<String, dynamic> json) =>
      _$UserScanEventResponseFromJson(json);
}
