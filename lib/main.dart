import 'package:flutter/material.dart';
import 'package:learn_bloc/my_app.dart';
import 'package:learn_bloc/services/local_storage_service.dart';
import 'package:learn_bloc/dependency_injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorageService localStorageService = LocalStorageService();
  await localStorageService.init();
  await di.injectDependency();
  runApp(const MyApp());
}
