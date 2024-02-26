import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> chosenDate() async {
    final myDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2023),
      lastDate: DateTime(selectedDate.year + 2),
      initialDate: selectedDate,
    );
    if (myDate != null) {
      setState(() {
        selectedDate = myDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HelperText(
              text:
                  '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}'),
          HelperElevatedButton(
            onPress: chosenDate,
            buttonName: 'Choose date',
            height: 30,
            width: 150,
          ),
        ],
      ),
    );
  }
}
