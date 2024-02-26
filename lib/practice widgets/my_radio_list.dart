import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyRadioList extends StatefulWidget {
  const MyRadioList({super.key});

  @override
  State<MyRadioList> createState() => _MyRadioListState();
}

List<String> myItems = ['Option One', 'Option Two'];

class _MyRadioListState extends State<MyRadioList> {
  String currentValue = myItems[1];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RadioListTile(
            title: const HelperText(text: 'Option One'),
            value: myItems[0],
            groupValue: currentValue,
            onChanged: (value) => setState(() {
              currentValue = value.toString();
            }),
          ),RadioListTile(
            title: const HelperText(text: 'Option Two'),
            value: myItems[1],
            groupValue: currentValue,
            onChanged: (value) => setState(() {
              currentValue = value.toString();
            }),
          ),
        ],
      ),
    );
  }
}
