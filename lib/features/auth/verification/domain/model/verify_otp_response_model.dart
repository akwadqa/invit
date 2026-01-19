import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_model.freezed.dart';
part 'verify_otp_response_model.g.dart';

@freezed
abstract class VerifyOtpResponseModel with _$VerifyOtpResponseModel {
  const factory VerifyOtpResponseModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'mobile_no') required String mobileNo,
    required String token,
  }) = _VerifyOtpResponseModel;

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseModelFromJson(json);
}
