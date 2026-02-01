import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.g.dart';
part 'event_model.freezed.dart';

@freezed
abstract class EventModel with _$EventModel {
  const factory EventModel({
    @JsonKey(name: 'occasion_id') String? occasionId,
    String? title,
    String? type,
    String? date,
    String? language,
    String? role,
    @JsonKey(name: 'map_longitude') String? mapLongitude,
    @JsonKey(name: 'map_latitude') String? mapLatitude,
    @JsonKey(name: 'map_link') String? mapLink,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'show_qr') int? showQr,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(includeFromJson: false) File? image,
    @JsonKey(name: 'invite_template') String? inviteTemplate,
    @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
    @JsonKey(name: 'declined_template') String? declinedTemplate,
    @JsonKey(name: 'workflow_state') String? workflowState,
    String? status,
    // @JsonKey(name: 'guest_report') GuestReportModel? guestReport,
    @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
    // @JsonKey(name: 'operators') List<HandlerModel>? operators,
    // @JsonKey(name: 'handlers') List<HandlerModel>? handlers,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}

@freezed
abstract class GuestModel with _$GuestModel {
  const factory GuestModel({
    @JsonKey(name: 'invitee_id') String? inviteeId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    @JsonKey(name: 'party_size') int? partySize,
    @JsonKey(name: 'rsvp_status') String? rsvpStatus,
    @JsonKey(name: 'replied') int? replied,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
