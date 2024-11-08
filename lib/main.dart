import 'package:flutter/material.dart';
import 'package:learn_bloc/my_app.dart';
import 'package:learn_bloc/routes/app_routes.dart';
import 'package:learn_bloc/routes/app_screens.dart';
import 'package:learn_bloc/services/firebase_service.dart';
import 'package:learn_bloc/services/local_storage_service.dart';

Future<void> main() async {
  /// ========== fully initialized before running any code that relies on Flutter’s services
  WidgetsFlutterBinding.ensureInitialized();
  /// ========== initialize default route
  AppRoutes.initialRoute = AppScreens.splashScreen;
  /// ========== initialize local storage service
  await LocalStorageService.init();
  /// ========== initialize firebase service
  await FirebaseService.initialize();
  /// ========== used to launch your Flutter application by inflating the widget tree starting with the root widget
  runApp(const MyApp());
}