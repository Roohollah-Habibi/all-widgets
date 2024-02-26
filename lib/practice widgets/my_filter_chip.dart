import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyFilterChip extends StatefulWidget {
  const MyFilterChip({super.key});

  @override
  State<MyFilterChip> createState() => _MyFilterChipState();
}

class _MyFilterChipState extends State<MyFilterChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: FilterChip(
          selected: _isSelected,
            backgroundColor: Colors.yellow,
            disabledColor: Colors.red,
            checkmarkColor: Colors.green,
            selectedColor: Colors.cyan,
            label: const HelperText(text: 'Filter chip'), onSelected: (value) => setState(() {
              _isSelected = !_isSelected;
            }),));
  }
}
