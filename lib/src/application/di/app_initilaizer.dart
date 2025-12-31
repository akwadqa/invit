// import 'package:ahtizam/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:invit/features/auth/application/auth_service.dart';
import 'package:invit/src/application/di/riverpod_observer.dart';
import 'package:invit/src/infrastructure/storage/local_storage_service.dart';

import '../../infrastructure/api/endpoint/services_urls.dart';
import '../../infrastructure/storage/hive/hive_initializer.dart';

abstract class AppInitializer {
  static Future<void> init() async {
    //-- Flutter init --
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    
    // -- FIREBASE INIT -- //
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    // -- Initialize Notifications -- //
    // final container = ProviderContainer();
    // await container.read(notificationServiceProvider).initialize();
    
    //-- ENV FILE LOAD  --
    await dotenv.load(fileName: '.env');
    //-- Hive initialize --
    await Hive.initFlutter();
    await HiveInitializer.initialize();
    
    //-- Load base URL's  --
    ServicesUrls.init();
    
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    //-- Localization init  --
    await EasyLocalization.ensureInitialized();
  }
}

Future<ProviderContainer> initializeProviders() async {
  final container = ProviderContainer(observers: [RiverpodObserver()]);
  await container.read(sharedPreferencesProvider.future);
  await container.read(localStorageServiceProvider).init();
  // ? INIT FIREBASE NOTIFICATION SERVICE

  // await container.read(notificationsServiceProvider).init();
  //   FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  // analytics.setAnalyticsCollectionEnabled(true);
  return container;
}

Future<void> handleSplashScreen(ProviderContainer container) async {
  const minSplashDuration = 2000;
  final startTime = DateTime.now();
  // await container.read(homeProvider.future);
  final loadDuration = DateTime.now().difference(startTime).inMilliseconds;

  if (loadDuration < minSplashDuration) {
    await Future.delayed(
        Duration(milliseconds: minSplashDuration - loadDuration));
  }

  // FlutterNativeSplash.remove();
}
