import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Container(
        color: Colors.orangeAccent,
        width: double.maxFinite,
        child: const FittedBox(child: HelperText(text: 'Fitted Box Widget')),
      ),
    );
  }
}
