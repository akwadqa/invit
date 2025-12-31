import 'package:dio/dio.dart';

class SignupParams {
  final String email;
  final String firstName;
  final String lastName;
  final String birthDate;
  final String password;
  final String mobileNumber;

  SignupParams(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.password,
      required this.mobileNumber});

  Map<String, dynamic> toMap() {
    // final totalCostWithSuplies=(discountCost?? totalNetAmount?? totalAmount)+(cleaningSuppliesFees??0);

    return {
      'email': email,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'mobile_no': mobileNumber,
      'birth_date': birthDate,
    };
  }

  FormData toFormData() {
    return FormData.fromMap(toMap());
  }
}
