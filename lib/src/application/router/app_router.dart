import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/auth/signUp/presentation/screens/signup_screen.dart';
import 'package:invit/features/auth/verification/presentation/screens/verification_account_screen.dart';
import 'package:invit/features/event_details/presentation/screens/event_details_screen.dart';
import 'package:invit/features/featured_events/presentation/screens/all_events_screen.dart';
import 'package:invit/features/home/event/presentation/screens/contact_list_screen.dart';
import 'package:invit/features/home/event/presentation/screens/create_event_screen.dart';
import 'package:invit/features/home/event/presentation/screens/guest_list_screen.dart';
import 'package:invit/features/home/event/presentation/screens/select_location_screen.dart';
import 'package:invit/features/home/event/presentation/screens/successfull_event_creation_screen.dart';
import 'package:invit/features/home/event/presentation/screens/upload_image_screen.dart';
import 'package:invit/features/home/presentation/screens/home_screen.dart';
import 'package:invit/features/home/presentation/screens/main_screen.dart';
import 'package:invit/features/invitation_type/presentation/screens/invitation_types_screen.dart';
import 'package:invit/features/notifications/presentation/screens/notifications_screen.dart';
import 'package:invit/features/onBoarding/on_boarding.dart';
import 'package:invit/features/auth/signIn/presentation/screens/sign_in_screen.dart';
import 'package:invit/features/onBoarding/splash_screen.dart';
import 'package:invit/features/scan/presentation/pages/scan_qr_event_page.dart';
import 'package:invit/features/scan_qr_code/presentation/screens/scan_qr_code_screen.dart';
// import 'package:invit/features/onBoarding/splash.dart';
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
    String initialRoute = AppRoutes.splashScreen;
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
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SplashScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.onBoarding,
          name: AppRoutes.onBoarding,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: OnBoarding(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.signInScreen,
          name: AppRoutes.signInScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SignInScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.signUpScreen,
          name: AppRoutes.signUpScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SignupScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.verificationScreen,
          name: AppRoutes.verificationScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: VerificationAccountScreen(
                phone: state.extra as String,
              ),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.homeScreen,
          name: AppRoutes.homeScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: HomeScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
            path: AppRoutes.mainScreen,
            name: AppRoutes.mainScreen,
            parentNavigatorKey: rootKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                child: MainScreen(),
                key: state.pageKey,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            },
            routes: [
              GoRoute(
                path: AppRoutes.notificationScreen,
                name: AppRoutes.notificationScreen,
                parentNavigatorKey: rootKey,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return CustomTransitionPage(
                    key: state.pageKey,
                    child: NotificationsScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                  );
                },
              ),
            ]),
        GoRoute(
            path: AppRoutes.invitationsSecreen,
            name: AppRoutes.invitationsSecreen,
            parentNavigatorKey: rootKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child:
                    InvitationTypesScreen(fromCreateEvent: state.extra as bool),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }),
        GoRoute(
            path: AppRoutes.allEventsSecreen,
            name: AppRoutes.allEventsSecreen,
            parentNavigatorKey: rootKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: AllEventsScreen(
                  eventType: state.extra as String?,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }),
        GoRoute(
            path: AppRoutes.eventDetails,
            name: AppRoutes.eventDetails,
            parentNavigatorKey: rootKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: EventDetailsScreen(
                  ocassionId: state.extra as String,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }),
        GoRoute(
            path: AppRoutes.selectLocationScreen,
            name: AppRoutes.selectLocationScreen,
            parentNavigatorKey: rootKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: SelectLocationPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              );
            }),
        //      GoRoute(
        //   path: AppRoutes.qrScreen,
        //   name: AppRoutes.qrScreen,
        //   pageBuilder: (context, state) => CustomTransitionPage(
        //     key: state.pageKey,
        //     child: QrScreen(id: state.extra as String?),
        //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //       return FadeTransition(opacity: animation, child: child);
        //     },
        //   ),
        // ),
        GoRoute(
          path: AppRoutes.scanQr,
          name: AppRoutes.scanQr,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: ScanQrEventPage(state.extra as String),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: AppRoutes.scanCameraQR,
          name: AppRoutes.scanCameraQR,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: ScanQrCodeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        ),
        GoRoute(
          path: AppRoutes.createEventScreen,
          name: AppRoutes.createEventScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: CreateEventScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.guestListScreen,
          name: AppRoutes.guestListScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: GuestListScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.contactListScreen,
          name: AppRoutes.contactListScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: ContactListScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.uploadImageScreen,
          name: AppRoutes.uploadImageScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: UploadImageScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.successEventScreen,
          name: AppRoutes.successEventScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SuccessfullEventCreationScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            );
          },
        ),
      ],
    );
  }
}
