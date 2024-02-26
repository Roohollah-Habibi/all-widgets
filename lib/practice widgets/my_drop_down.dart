import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String itemValue = 'One';

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: DropdownButton<String>(
        value: itemValue,
        icon: const Icon(Icons.menu),
        iconSize: 40,
        style: const TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        underline: Container(
          height: 5,
          color: Colors.red,
        ),
        items: const[
          DropdownMenuItem<String>(value: 'one',child: Text('One')),
          DropdownMenuItem<String>(value: 'two',child: Text('Two')),
          DropdownMenuItem<String>(value: 'three',child: Text('Three')),
          DropdownMenuItem<String>(value: 'four',child: Text('Four')),
          DropdownMenuItem<String>(value: 'five',child: Text('Five')),
        ],
        onChanged: (value) {
          setState(() {
            itemValue = value!;
          });
        },
      ),
    );
  }
}
