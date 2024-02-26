import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyInputChip extends StatefulWidget {
  const MyInputChip({super.key});

  @override
  State<MyInputChip> createState() => _MyInputChipState();
}

class _MyInputChipState extends State<MyInputChip> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      color: Colors.indigoAccent,
      child: InputChip(
        deleteIconColor: Colors.red,
        label: const HelperText(text: 'Input Chip'),
        selected: _selected,
        backgroundColor: Colors.blue,
        shadowColor: Colors.cyan,
        onSelected: (value) => setState(() {
          _selected = !_selected;
        }),
        elevation: 10,
        selectedColor: Colors.green.shade900,
        disabledColor: Colors.red.shade900,
        // avatarBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        isEnabled: true,
        deleteIcon: const Icon(
          Icons.delete_forever_outlined,
          size: 35,
        ),
        onDeleted: () {},
        avatar: _selected
            ? null
            : const CircleAvatar(
                backgroundImage: AssetImage('assets/roohollah.jpg'),
              ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        checkmarkColor: Colors.green,
      ),
    );
  }
}
