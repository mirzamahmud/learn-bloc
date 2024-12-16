import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;
  final TextOverflow textOverflow;
  final int maxLines;
  const CustomTextWidget({
    required this.text,
    this.textAlign = TextAlign.left,
    this.textStyle,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      style: textStyle,
    );
  }
}