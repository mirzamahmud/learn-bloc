import 'package:flutter/material.dart';
import 'package:learn_bloc/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Learn Bloc',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}