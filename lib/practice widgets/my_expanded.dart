import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              width: 400,
              height: 200,
              alignment: Alignment.center,
              child: const HelperText(text: 'Flex 2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.cyan,
              width: 400,
              height: 200,
              alignment: Alignment.center,
              child: const HelperText(text: 'Flex 1'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueGrey,
              width: 400,
              height: 200,
              child: const HelperText(text: 'Flex 3'),
            ),
          ),
        ],
      ),
    );
  }
}
