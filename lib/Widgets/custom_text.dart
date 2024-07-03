import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fw;
  final double? letterSpacing;

  const CustomText({super.key, required this.text, this.size, this.color, this.fw, this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fw, letterSpacing: letterSpacing),
    );
  }
}
