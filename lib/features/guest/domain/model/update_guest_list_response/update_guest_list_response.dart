import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_guest_list_response.freezed.dart';
part 'update_guest_list_response.g.dart';

@freezed
abstract class UpdateGuestListResponse with _$UpdateGuestListResponse {
  const factory UpdateGuestListResponse({
    @JsonKey(name: 'occasion_id') required String occasionId,
    @JsonKey(name: 'added_count') required int addedCount,
    @JsonKey(name: 'skipped_count') required int skippedCount,
    @JsonKey(name: 'added_invitees')
    required List<AddedInviteeModel> addedInvitees,
  }) = _UpdateGuestListResponse;

  factory UpdateGuestListResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateGuestListResponseFromJson(json);
}

@freezed
abstract class AddedInviteeModel with _$AddedInviteeModel {
  const factory AddedInviteeModel({
    @JsonKey(name: 'invitee_id') required String inviteeId,
    @JsonKey(name: 'full_name') required String fullName,
  }) = _AddedInviteeModel;

  factory AddedInviteeModel.fromJson(Map<String, dynamic> json) =>
      _$AddedInviteeModelFromJson(json);
}
