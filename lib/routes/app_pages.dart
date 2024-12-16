import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_bloc/features/home/home_screen.dart';
import 'package:learn_bloc/features/splash/splash_screen.dart';
import 'package:learn_bloc/routes/app_routes.dart';

class AppPages {

  static late final String initialRoute;

  static final GoRouter pages = GoRouter(
    initialLocation: initialRoute,
    routes: [
      GoRoute(
        path: AppRoutes.splash, 
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen()
        )
      ),
      GoRoute(
        path: AppRoutes.home, 
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen()
        )
      )
    ]
  );
}