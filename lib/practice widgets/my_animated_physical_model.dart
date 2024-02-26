import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedPhysicalModel extends StatefulWidget {
  const MyAnimatedPhysicalModel({super.key});

  @override
  State<MyAnimatedPhysicalModel> createState() =>
      _MyAnimatedPhysicalModelState();
}

class _MyAnimatedPhysicalModelState extends State<MyAnimatedPhysicalModel> {
  bool _isTapped = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> setState(() {
        _isTapped = !_isTapped;
      }),
      child: HelperContainer(
        color: Colors.transparent,
        child: AnimatedPhysicalModel(
          color: _isTapped ? Colors.transparent : Colors.transparent,
          duration: const Duration(seconds: 1),
          elevation: _isTapped ? 0 : 25,
          shadowColor: _isTapped ? Colors.transparent : Colors.yellow,
          shape: BoxShape.rectangle,
          curve: Curves.linear,

          child: const HelperText(text: 'Animated Physical Model'),
        ),
      ),
    );
  }
}
