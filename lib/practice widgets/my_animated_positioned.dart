import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedPositioned extends StatefulWidget {
  const MyAnimatedPositioned({super.key});

  @override
  State<MyAnimatedPositioned> createState() => _MyAnimatedPositionedState();
}

class _MyAnimatedPositionedState extends State<MyAnimatedPositioned> {
  bool _isOnTapped = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>setState(() {
        _isOnTapped = !_isOnTapped;
      }),
      child: HelperContainer(
        color: Colors.indigo.shade200,
          child: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.fastOutSlowIn,
            height: 100,
            width: 220,
            left: _isOnTapped ? 100 : 0,
            bottom: _isOnTapped ? 20: 140,
            child: HelperText(text: 'AnimatedPosition'),
            duration: const Duration(seconds: 2),
          ),
        ],
      )),
    );
  }
}
