import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/core/dependency/dependency_injector.dart';
import 'package:learn_bloc/core/observer/app_bloc_observer.dart';
import 'package:learn_bloc/learn_bloc.dart';
import 'package:learn_bloc/routes/app_pages.dart';
import 'package:learn_bloc/routes/app_routes.dart';
import 'package:learn_bloc/utils/device/device_util.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  DeviceUtil.initialize();
  AppPages.initialRoute = AppRoutes.splash;
  injectDependency();
  runApp(const LearnBloc());
}