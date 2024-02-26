import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Center(child: Switch(value: _isSwitch, onChanged: (value) => setState(() {
      _isSwitch = value;
    }),),);
  }
}
