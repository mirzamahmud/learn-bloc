import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Internet, Please Try Again.'),
    );
  }
}