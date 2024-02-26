import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}
List<String> myItems = ['Option One', 'Option Two'];
class _MyRadioState extends State<MyRadio> {
  String currentValue = myItems[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(myItems[0]),
          leading: Radio(
            value: myItems[0],
            groupValue: currentValue,
            onChanged: (value) => setState(() {
              currentValue = myItems[0].toString();
            }),
          ),
        ),ListTile(
          title: Text(myItems[1]),
          leading: Radio(
            value: myItems[1],
            groupValue: currentValue,
            onChanged: (value) => setState(() {
              currentValue = myItems[1].toString();
            }),
          ),
        ),
      ],
    );
  }
}
