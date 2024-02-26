import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyOverFlowBar extends StatelessWidget {
  const MyOverFlowBar({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: OverflowBar(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
          margin: EdgeInsets.all(3),
        ),Container(
          height: 100,
          width: 100,
          color: Colors.red,
          margin: EdgeInsets.all(3),
        ),Container(
          height: 100,
          width: 100,
          color: Colors.red,
          margin: EdgeInsets.all(3),
        ),Container(
          height: 100,
          width: 100,
          color: Colors.red,
          margin: EdgeInsets.all(3),
        ),
      ],
    ));
  }
}
