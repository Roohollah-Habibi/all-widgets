import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Transform.scale(
          scale: 2.5,
          child: Checkbox(
                activeColor: Colors.yellow,
                checkColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                tristate: true,
                value: isChecked,
                onChanged: (value) => setState(() {
          isChecked = value;
                }),
              ),
        ));
  }
}
