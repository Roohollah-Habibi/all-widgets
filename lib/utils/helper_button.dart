import 'package:flutter/material.dart';

class HelperElevatedButton extends StatelessWidget {
  final String buttonName;
  final void Function() onPress;
  final Color backgroundColor;
  final Color foregroundColor;
  final double width;
  final double height;
  final double fontSize;

  const HelperElevatedButton({
    super.key,
    required this.onPress,
    required this.buttonName,
    this.backgroundColor = Colors.orange,
    this.foregroundColor = Colors.black,
    this.width = 170,
    this.height = 60,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            fixedSize: Size(width, height)),
        onPressed: onPress,
        child: Text(buttonName));
  }
}
