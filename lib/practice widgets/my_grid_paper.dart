import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyGridPaper extends StatefulWidget {
  const MyGridPaper({super.key});

  @override
  State<MyGridPaper> createState() => _MyGridPaperState();
}

class _MyGridPaperState extends State<MyGridPaper> {
  int division = 1;
  double interval = 210.0;
  int subdivision = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        division++;
        interval++;
        subdivision++;
      }),
      child: HelperContainer(
        color: Colors.black,
        child: GridPaper(
          color: Colors.red,
          divisions: division,
          interval: interval,
          subdivisions: subdivision,
          child: Container(

          ),
        ),
      ),
    );
  }
}
