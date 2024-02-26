import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySelectedText extends StatelessWidget {
  const MySelectedText({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: SelectableText(
      'This is a flutter selectable text',
      style: const TextStyle(fontSize: 30,),
          cursorRadius: const Radius.circular(40),
    ));
  }
}
