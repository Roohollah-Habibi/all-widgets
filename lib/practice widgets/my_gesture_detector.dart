import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: GestureDetector(
          onTap: () => setState(() {
            _counter++;
          }),
      child: FractionallySizedBox(
        heightFactor: .5,
        widthFactor: .5,
        child: Container(
          color: Colors.orange,
          alignment: Alignment.center,
          child: HelperText(
            text: _counter.toString(),
            textAlign: TextAlign.center,
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    ));
  }
}
