import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<MyChoiceChip> {
  Color chipColor = Colors.green;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ChoiceChip(
        avatar: checked ? null: const Icon(Icons.radio_button_unchecked_outlined) ,
        label: const Text('Choice Chip Widget'),
        backgroundColor: Colors.orange,
        onSelected: (value) => setState(() {
          checked = value;
        }),
        // avatar: Icon(Icons.accessibility),
        selected: checked,
        shadowColor: Colors.yellow,
        elevation: 10,
      ),
    );
  }
}
