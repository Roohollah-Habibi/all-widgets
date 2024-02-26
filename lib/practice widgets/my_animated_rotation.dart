import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedRotate extends StatefulWidget {
  const MyAnimatedRotate({super.key});

  @override
  State<MyAnimatedRotate> createState() => _MyAnimatedRotateState();
}

class _MyAnimatedRotateState extends State<MyAnimatedRotate> {
  double _onRotate = 0.0;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      onTap: ()=>setState(() {
        _onRotate = _onRotate += 1/4 ;
      }),
      child: AnimatedRotation(
        duration: const Duration(seconds: 1),
        turns: _onRotate,
        curve: Curves.fastOutSlowIn,
        child: const HelperText(text: 'Animated'),
      ),
    );
  }
}
