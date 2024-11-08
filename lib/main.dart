import 'package:flutter/material.dart';
import 'package:learn_bloc/my_app.dart';
import 'package:learn_bloc/services/local_storage_service.dart';

Future<void> main() async {
  /// ========== fully initialized before running any code that relies on Flutter’s services
  WidgetsFlutterBinding.ensureInitialized();
  /// ========== initialize local storage service
  await LocalStorageService.init();
  /// ========== used to launch your Flutter application by inflating the widget tree starting with the root widget
  runApp(const MyApp());
}