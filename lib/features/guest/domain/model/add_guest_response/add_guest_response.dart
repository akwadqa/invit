import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_guest_response.freezed.dart';
part 'add_guest_response.g.dart';

@freezed
abstract class AddGuestResponse with _$AddGuestResponse {
  const factory AddGuestResponse({
    @JsonKey(name: 'occasion_id') required String occasionId,
    @JsonKey(name: 'created_invitees')
    required List<CreatedInviteeModel> createdInvitees,
    required List<CreatedInviteeModel> duplicates,
  }) = _AddGuestResponse;

  factory AddGuestResponse.fromJson(Map<String, dynamic> json) =>
      _$AddGuestResponseFromJson(json);
}

@freezed
abstract class CreatedInviteeModel with _$CreatedInviteeModel {
  const factory CreatedInviteeModel({
    @JsonKey(name: 'invitee_id') required String inviteeId,
    @JsonKey(name: 'full_name') required String fullName,
  }) = _CreatedInviteeModel;

  factory CreatedInviteeModel.fromJson(Map<String, dynamic> json) =>
      _$CreatedInviteeModelFromJson(json);
}
