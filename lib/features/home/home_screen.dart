import 'package:flutter/material.dart';
import 'package:learn_bloc/utils/color/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
          child: Text(
            'Home Screen',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}