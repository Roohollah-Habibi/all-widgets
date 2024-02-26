import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      height: 400,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
            color: Colors.pink,
            child: Center(child: HelperText(text: 'Some Text'))),
      ),
    );
  }
}
