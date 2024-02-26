import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _currentValue = 10;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Slider(
          max: 100,
      min: 0,
      divisions: 100,
      label: '$_currentValue'.toString(),
      value: _currentValue,
      onChanged: (value) => setState(() {
        _currentValue = value.roundToDouble();
      }),
    ));
  }
}
