import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_model.freezed.dart';
part 'guest_model.g.dart';

@freezed
abstract class GuestModel with _$GuestModel {
  const factory GuestModel({
    @JsonKey(name: 'invitee_id') required String? inviteeId,
    @JsonKey(name: 'full_name') required String? fullName,
    @JsonKey(name: 'whatsapp_number') required String? whatsappNumber,
    @JsonKey(name: 'party_size') @Default(1) int? partySize,
    @JsonKey(name: 'rsvp_status') required String? rsvpStatus,
    @Default(0) int replied,
    @JsonKey(name: 'checkin_count') @Default(0) int? checkinCount,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
