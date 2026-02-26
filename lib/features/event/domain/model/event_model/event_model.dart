import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/event_details/domain/model/guest_report_model.dart';

part 'event_model.g.dart';
part 'event_model.freezed.dart';

@freezed
abstract class EventModel with _$EventModel {
  const factory EventModel({
    @JsonKey(name: 'event_id') String? eventId,
    @JsonKey(name: 'date_time') String? dateTime,
    String? title,
    String? type,
    String? language,
    String? role,
    @JsonKey(name: 'longitude') String? mapLongitude,
    @JsonKey(name: 'latitude') String? mapLatitude,
    @JsonKey(name: 'map_link') String? mapLink,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'show_qr') int? showQr,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(includeFromJson: false) File? image,
    @JsonKey(name: 'invite_template') String? inviteTemplate,
    @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
    @JsonKey(name: 'declined_template') String? declinedTemplate,
    @JsonKey(name: 'workflow_state') String? workflowState,
    @JsonKey(name: 'is_featured') int? isFeatured,
    String? status,
    // @JsonKey(name: 'guest_report') GuestReportModel? guestReport,
    @JsonKey(name: 'guest_list') List<GuestModel>? guestList,
    
    @JsonKey(name: 'guest_report')
    GuestReportModel? guestReport,
    // @JsonKey(name: 'operators') List<HandlerModel>? operators,
    // @JsonKey(name: 'handlers') List<HandlerModel>? handlers,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
       factory EventModel.placeholder() =>  EventModel(
        eventId: "occasionId",
        title: "title",
        type: "type",
        dateTime: DateTime.now().toString(),
        mapLink: "mapLink",
        imageUrl: "/files/event_image_20251221172218_test.jpg",
        workflowState: "workflowState",
        isFeatured: 0,
        status: "status",
        role: "role");
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
