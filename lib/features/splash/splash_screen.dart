import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_bloc/features/splash/bloc/splash_bloc.dart';
import 'package:learn_bloc/features/splash/inner_widget/splash_body_content.dart';
import 'package:learn_bloc/routes/app_routes.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashBloc splashBloc;

  @override
  void initState() {
    super.initState();
    splashBloc = SplashBloc();
    splashBloc.add(AppStartedEvent());
  }

  @override
  void dispose() {
    super.dispose();
    splashBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => splashBloc,
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if(state is SplashLoadedState){
            context.pushReplacement(AppRoutes.home);
          }
        },
        child: const SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: SplashBodyContent(),
          ),
        ),
      )
    );
  }
}