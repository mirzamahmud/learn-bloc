import 'package:flutter/material.dart';

class SplashBodyContent extends StatelessWidget {
  const SplashBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Learn Bloc',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}