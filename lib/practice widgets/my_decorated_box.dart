import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDecoratedBox extends StatelessWidget {
  const MyDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: SizedBox(
        height: 300,
        width: 300,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.cyan, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              boxShadow: [
                BoxShadow(color: Colors.red, spreadRadius: 10, blurRadius: 40)
              ]),
          child: Center(child: HelperText(text: 'Decorated Box Widget')),
        ),
      ),
    );
  }
}
