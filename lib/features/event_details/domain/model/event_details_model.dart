import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'guest_report_model.dart';

part 'event_details_model.freezed.dart';
part 'event_details_model.g.dart';

@freezed
abstract class EventDetailsModel with _$EventDetailsModel {
  const factory EventDetailsModel({
    @JsonKey(name: 'occasion_id') required String occasionId,
    required String title,
    String? date,
    String? time,
    @JsonKey(name: 'map_link') required String mapLink,
    @JsonKey(name: 'image_url') required String imageUrl,

    @JsonKey(name: 'invite_template') String? inviteTemplate,
    @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
    @JsonKey(name: 'declined_template') String? declinedTemplate,

    required String status,

    /// 👇 HERE is the guests list
    @Default(<GuestModel>[])
    List<GuestModel> guests,

    @JsonKey(name: 'guest_report')
    GuestReportModel? guestReport,
  }) = _EventDetailsModel;

  factory EventDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsModelFromJson(json);
}
