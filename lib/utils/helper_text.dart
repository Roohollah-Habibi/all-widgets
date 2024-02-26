import 'package:flutter/material.dart';

class HelperText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  const HelperText({
    super.key,
    required this.text,
    this.fontSize = 26,
    this.color = Colors.black,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
