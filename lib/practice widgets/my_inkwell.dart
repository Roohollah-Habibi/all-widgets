import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({super.key});

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  Color myColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: InkWell(
        onTap: () => setState(() {
          myColor = Colors.red;
        }),
        child: Ink(width: 200,height: 200,color: myColor,),
      ),
    );
  }
}
