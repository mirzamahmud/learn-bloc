import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/core/observer/app_bloc_observer.dart';
import 'package:learn_bloc/learn_bloc.dart';
import 'package:learn_bloc/routes/app_pages.dart';
import 'package:learn_bloc/routes/app_routes.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  AppPages.initialRoute = AppRoutes.splash;
  runApp(const LearnBloc());
}