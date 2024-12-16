import 'package:flutter/material.dart';

class CustomAppLogo extends StatelessWidget {
  final String imageSrc;
  final double imageSize;
  const CustomAppLogo({
    required this.imageSrc,
    required this.imageSize,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageSrc,
      height: imageSize,
      width: imageSize,
    );
  }
}