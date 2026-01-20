// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    _VerifyOtpResponseModel(
      userId: json['user_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      mobileNo: json['mobile_no'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        _VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'mobile_no': instance.mobileNo,
      'token': instance.token,
    };
