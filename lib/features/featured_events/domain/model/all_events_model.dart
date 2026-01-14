
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_events_model.freezed.dart';
part 'all_events_model.g.dart';
@freezed
abstract class AllEventsModel with _$AllEventsModel {
  const factory AllEventsModel({
    @JsonKey(name: 'occasion_id') required String occasionId,
    required String title,
    required String type,
    required String date,
    required String time,
    @JsonKey(name: 'map_link') required String mapLink,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'invite_template') String? inviteTemplate,
    @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
    @JsonKey(name: 'declined_template') String? declinedTemplate,
    @JsonKey(name: 'workflow_state') required String workflowState,
    @JsonKey(name: 'is_featured') required int isFeatured,
    required String status,
    required String role,
  }) = _AllEventsModel;

  factory AllEventsModel.fromJson(Map<String, dynamic> json) =>
      _$AllEventsModelFromJson(json);
}
