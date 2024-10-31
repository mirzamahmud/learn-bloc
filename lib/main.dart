import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_bloc/core/utils/app_utils.dart';
import 'package:learn_bloc/my_app.dart';
import 'package:learn_bloc/services/local_storage_service.dart';
import 'package:learn_bloc/dependency_injector.dart' as di;

void main() async {
  /// ===== initialized before you run certain tasks =====
  WidgetsFlutterBinding.ensureInitialized();

  /// ===== initialize local storage service =====
  LocalStorageService localStorageService = LocalStorageService();

  /// ===== init local storage service =====
  await localStorageService.init();

  /// ===== initialize firebase =====
  await Firebase.initializeApp();

  /// ===== inject dependency =====
  await di.injectDependency();

  /// ===== device orientation =====
  AppUtils.deviceOrientation();

  /// ===== system ui overlay =====
  AppUtils.systemUiOverlay();
  runApp(const MyApp());
}
