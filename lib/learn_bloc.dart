import 'package:flutter/material.dart';
import 'package:learn_bloc/core/constants/app_constant.dart';
import 'package:learn_bloc/routes/app_pages.dart';

class LearnBloc extends StatelessWidget {
  const LearnBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConstant.appName,
      routerConfig: AppPages.pages,
    );
  }
}