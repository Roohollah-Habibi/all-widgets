import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyRangeValue extends StatefulWidget {
  const MyRangeValue({super.key});

  @override
  State<MyRangeValue> createState() => _MyRangeValueState();
}

class _MyRangeValueState extends State<MyRangeValue> {
  RangeValues _rangeValues = const RangeValues(0, .99);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(
      _rangeValues.start.toString(),
      _rangeValues.end.toString(),
    );
    return HelperContainer(
      child: RangeSlider(
        activeColor: Colors.indigo.shade900,
        inactiveColor: Colors.red.shade900,
        values: _rangeValues,
        divisions: 10,
        labels: rangeLabels,
        onChanged: (value) => setState(() {
          _rangeValues = value;
        }),
      ),
    );
  }
}
