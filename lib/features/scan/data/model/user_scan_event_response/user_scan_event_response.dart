// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:invit/features/home/domain/model/events/event_model.dart';

// part 'user_scan_event_response.freezed.dart';
// part 'user_scan_event_response.g.dart';

// @freezed
// abstract class UserScanEventResponse with _$UserScanEventResponse {
//   const factory UserScanEventResponse({
//     // @JsonKey(name: 'events') required List<EventModel> events,
//         @JsonKey(name: 'occasion_id') required String occasionId,
//     required String title,
//     required String date,
//     @JsonKey(name: 'map_link') required String mapLink,
//     @JsonKey(name: 'image_url') required String imageUrl,
//     @JsonKey(name: 'invite_template') String? inviteTemplate,
//     @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
//     @JsonKey(name: 'declined_template') String? declinedTemplate,
//     @JsonKey(name: 'workflow_state') required String workflowState,
//   }) = _UserScanEventResponse;

//   factory UserScanEventResponse.fromJson(Map<String, dynamic> json) =>
//       _$UserScanEventResponseFromJson(json);
// }
