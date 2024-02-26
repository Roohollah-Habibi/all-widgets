import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay selectedDate = TimeOfDay.now();

  Future<void> myTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: selectedDate,
      initialEntryMode: TimePickerEntryMode.input,
      barrierColor: Colors.lightBlue.withOpacity(.5),
      barrierDismissible: false,
      barrierLabel: 'Set your time here',
      builder: (context, child) => MediaQuery(
          data: const MediaQueryData(alwaysUse24HourFormat: false,),
          child: child!),
    );
    if (time != null) {
      setState(() {
        selectedDate = time;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HelperText(text: '${selectedDate.hour}:${selectedDate.minute}'),
        const SizedBox(height: 30),
        HelperElevatedButton(
          onPress: myTime,
          buttonName: 'Select Date',
          width: 150,
          height: 30,
        ),
      ],
    ));
  }
}
