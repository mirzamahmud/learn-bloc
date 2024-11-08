import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        body: Center(
          child: Text('Onboard Screen')
        ),
      ),
    );
  }
}