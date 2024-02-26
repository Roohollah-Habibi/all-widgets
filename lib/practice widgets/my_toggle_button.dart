import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  const MyToggleButton({super.key});

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List<bool> myList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ToggleButtons(
        isSelected: myList,
        children: const [
          Icon(Icons.person, size: 30),
          Icon(Icons.settings, size: 30),
          Icon(Icons.padding, size: 30),
        ],
        onPressed: (index) => setState(() {
          myList[index] = !myList[index];
        }),
      ),
    );
  }
}
