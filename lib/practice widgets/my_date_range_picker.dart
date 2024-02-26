import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDateRangePicker extends StatefulWidget {
  const MyDateRangePicker({super.key});

  @override
  State<MyDateRangePicker> createState() => _MyDateRangePickerState();
}

class _MyDateRangePickerState extends State<MyDateRangePicker> {
  DateTimeRange dateRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  Future<void> showRangeDate() async {
    final myDate = await showDateRangePicker(context: context, firstDate: DateTime(2023), lastDate: DateTime(3000));
    if(myDate != null){
      setState(() {
        dateRange = myDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return HelperContainer(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HelperText(text: 'Duration in days: ${dateRange.duration.inDays}'),
          HelperElevatedButton(onPress: showRangeDate, buttonName: 'Choose date range',height: 30,),
        ],
    ));
  }
}
