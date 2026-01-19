class ApiEndPoints {
  final domain="invite.api.";
  //? --- Home ---
  static const String homeServices = 'api/services/';
  //? --- Event ---
  static const String createEvent = 'invite.api.api.create_event';

  //? --- signIn ---
  static const String signIn = 'invite.api.auth.send_otp';
  static const String signUp = 'invite.api.auth.register';
  static const String verifyOtp = 'invite.api.auth.verify_otp';
  //? --- OrderService ---
  static const String orderService = 'api/service-request/create/';
  static const String myOrdersService = 'api/service-requests';
}
