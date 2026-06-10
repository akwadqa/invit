import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaymentState {
  final AsyncValue<String>? paymentLink;
  PaymentState({this.paymentLink});

  factory PaymentState.initial() => PaymentState(paymentLink: null);

  PaymentState copyWith({AsyncValue<String>? paymentLink}) {
    return PaymentState(
      paymentLink: paymentLink ?? this.paymentLink,
    );
  }
}
