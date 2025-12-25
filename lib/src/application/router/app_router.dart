import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/presentation/screens/home_screen.dart';
import 'package:invit/features/onBoarding/on_boarding.dart';
import 'package:invit/features/auth/signIn/presentation/screens/sign_in_screen.dart';
import 'package:invit/features/onBoarding/splash.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/infrastructure/storage/local_storage_service.dart';
import 'package:invit/src/logger/log_services/dev_logger.dart';

import 'custom_navigation_observer.dart';
import 'fallback_screen.dart';

final GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();

class AppRouter {
  final GoRouter goRouter;

  AppRouter(Ref ref) : goRouter = _createRouter(ref);

  static GoRouter _createRouter(Ref ref) {
    String initialRoute=AppRoutes.splashScreen;
    return GoRouter(
      navigatorKey: rootKey,
      initialLocation: initialRoute,
      observers: [CustomNavigationObserver()],
      errorBuilder: (context, state) => const FallbackScreen(),
    //   redirect: (context, state) async {
    //     // Consumer(
    //     //   builder: (context, ref, child) {
    //     //     // return ;
    //     //   },
    //     // );
    //   //  final storage = ref.read(localStorageServiceProvider);
    //   //   final isFirstTime = await storage.isFirstTimeOpen();
    //   //   final isAuth = await ref.read(isAuthenticatedProvider.future);
    //   //   final currentLocation = state.matchedLocation;

    //   //   Dev.logLine('Current location: $currentLocation');
    //   //   Dev.logLine('isFirstTime: $isFirstTime, isAuth: $isAuth');

    //   //   // ===== First-time onboarding =====
    //   //   if (isFirstTime ) {
    //   //     Dev.logLine(AppRoutes.onBoarding);
    //   //     return AppRoutes.onBoarding;
    //   //   }

    //   //   // ===== Not authenticated =====
    //   //   if (!isAuth ) {
    //   //     Dev.logLine(AppRoutes.signInScreen);

    //   //     return AppRoutes.signInScreen;
    //   //   }

    //   //   // ===== Authenticated users trying to access non-home pages =====
    //   //   // if (isAuth) {
    //   //     return AppRoutes.homeScreen;
    //     // }

    //     // No redirection needed
    //     // return null;
    // },
    
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutes.splashScreen,
          parentNavigatorKey: rootKey,
          builder: (BuildContext context, GoRouterState state) {
            return SplashScreen();
          },
        ),
        GoRoute(
          path: AppRoutes.onBoarding,
          name: AppRoutes.onBoarding,
          parentNavigatorKey: rootKey,
          builder: (BuildContext context, GoRouterState state) {
            return OnBoarding();
          },
        ),
        GoRoute(
          path: AppRoutes.signInScreen,
          name: AppRoutes.signInScreen,

          parentNavigatorKey: rootKey,
          builder: (BuildContext context, GoRouterState state) {
            return SignInScreen();
          },
        ),
        GoRoute(

          path: AppRoutes.homeScreen,
          name: AppRoutes.homeScreen,

          parentNavigatorKey: rootKey,
          builder: (BuildContext context, GoRouterState state) {
            return HomeScreen();
          },
        ),
        
        // GoRoute(
        //   path: AppRoutes.homeScreen,
        //   parentNavigatorKey: rootKey,
        //   builder: (BuildContext context, GoRouterState state) {
        //     return OnBoarding();
        //   },
        // ),
        // GoRoute(
        //   path: AppRoutes.serviceDetails,
        //   name: AppRoutes.serviceDetails,
        //   // parentNavigatorKey: rootKey,
          
        //   builder: (BuildContext context, GoRouterState state) {
        //     final ServicesEntity? services=state.extra as ServicesEntity?;
        //     // final serviceName = state.pathParameters['name'] ?? '';
        //     // final serviceImage = state.pathParameters['image'] ?? '';
        //     // final int serviceId = state.pathParameters['serviceId'] as int;
        //     // final serviceDescription =
        //     //     state.pathParameters['description'] ?? '';

        //     return ServiceDetailsPage(
        //       services: services,
        //     );
        //   },
        // ),
      ],
    );
  }
}
