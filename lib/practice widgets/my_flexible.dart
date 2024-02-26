import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Flexible(
              child: Container(
                  width: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: HelperText(text: 'flex')),
            ),
            Flexible(
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  color: Colors.blue,
                  child: HelperText(text: 'flex')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  color: Colors.red,
                  child: HelperText(text: 'Expanded')),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  color: Colors.blue,
                  child: HelperText(text: 'Expanded')),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  color: Colors.red,
                  child: HelperText(text: 'Expanded')),
            ),
            Flexible(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  color: Colors.blue,
                  child: HelperText(text: 'flexible')),
            ),
          ],
        ),
      ],
    );
  }
}
// Flexible(
// fit: FlexFit.tight,
// flex: 1,
// child: Container(
// color: Colors.blue,
// width: double.infinity,
// height: 200,
// ),
// ),
// Flexible(
// fit: FlexFit.tight,
// flex: 2,
// child: Container(
// color: Colors.red,
// width: double.infinity,
// height: 100,
// ),
// ),
// Flexible(
// fit: FlexFit.tight,
// flex: 3,
// child: Container(
// color: Colors.green,
// width: double.infinity,
// height: 300,
// ),
// ),
