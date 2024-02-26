import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyFractionalTransaltion extends StatelessWidget {
  const MyFractionalTransaltion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
        ),
        FractionalTranslation(
          translation: const Offset(1, -1),
          child: Container(
            color: Colors.green,
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
