import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyFractionallySizedBox extends StatelessWidget {
  const MyFractionallySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: FractionallySizedBox(
          heightFactor: .5,
      widthFactor: .5,
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: const HelperText(text: 'Fractionally Sized Box',textAlign: TextAlign.center,),
      ),
    ),);
  }
}
