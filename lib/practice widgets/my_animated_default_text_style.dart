import 'package:flutter/material.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({super.key});

  @override
  State<MyAnimatedDefaultTextStyle> createState() =>
      _MyAnimatedDefaultTextStyleState();
}

class _MyAnimatedDefaultTextStyleState
    extends State<MyAnimatedDefaultTextStyle> {
  bool isOnTapped = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isOnTapped = !isOnTapped;
      }),
      child: HelperContainer(
          child: AnimatedDefaultTextStyle(
              style: TextStyle(
                color: isOnTapped ? Colors.purple.shade900 : Colors.red,
                fontSize: isOnTapped ? 30 : 40,
                fontWeight: isOnTapped ? FontWeight.bold : FontWeight.normal,
              ),
              duration: Duration(seconds: 2),
              child: Text('Hello Flutter World'))),
    );
  }
}
