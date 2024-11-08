import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_bloc/routes/app_screens.dart';
import 'package:learn_bloc/views/screens/onboard/onboard_screen.dart';
import 'package:learn_bloc/views/screens/sign_in/sign_in_screen.dart';
import 'package:learn_bloc/views/screens/splash/splash_screen.dart';

class AppRoutes {
  ///
  static late final String initialRoute;
  ///
  static final GoRouter router = GoRouter(
    initialLocation: initialRoute,
    routes: [
      /// ========== splash screen
      GoRoute(path: AppScreens.splashScreen, pageBuilder: (context, state) => const MaterialPage(child: SplashScreen())),
      /// ========== onboard screen
      GoRoute(path: AppScreens.onboardScreen, pageBuilder: (context, state) => const MaterialPage(child: OnboardScreen())),
      /// ========== sign in screen
      GoRoute(path: AppScreens.signInScreen, pageBuilder: (context, state) => const MaterialPage(child: SignInScreen()))
    ]
  );
}