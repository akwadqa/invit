class ApiEndPoints {
  final domain="invite.api.";

  //? --- Home ---
  static const String homeServices = 'invite.api.api.get_home_page_data';
  //? --- Event ---
  static const String createEvent = 'invite.api.api.create_event';
  static const String getTemplates = 'invite.api.api.templates';
  static const String confirmEvent = 'invite.api.api.confirm_event';

  //? --- Guest ---
  static const String addGuest = 'invite.api.api.add_guest';
  static const String deleteGuest = 'invite.api.api.delete_guest';
  static const String updateGuestList = 'invite.api.api.update_guest_list';



  //? --- AUTH ---
  static const String signIn = 'invite.api.auth.send_otp';
  static const String signUp = 'invite.api.auth.register';
  static const String verifyOtp = 'invite.api.auth.verify_otp';

  //? --- Notification ---
  static const String appNotification = 'invite.api.api.get_notification_logs';

  //? --- Settings ---
  static const String deleteAccountApi = 'invite.api.auth.delete_user';
  static const String logoutApi = 'invite.api.auth.logout';

  //? --- EventsCollection ---
  static const String getUserEvents = 'invite.api.api.get_user_events';
  static const String getEventDetails = 'invite.api.api.get_event';

  //? --- QR SCAN ---
  static String scanQr = 'invite.api.api.check_in';
  static String getScaned = 'invite.api.api.get_scan_events';
  static const String getActiveGates = 'invite.api.api.get_active_gates';

  static const String sendFcmToken = 'fcm_frappe.api.device_token';


}
