import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
      child: Icon(Icons.flutter_dash_outlined,
          size: 200,
          color: Colors.red,
          shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 3,
              offset: Offset(10, 10),
            ),
            BoxShadow(
              color: Colors.indigo,
              blurRadius: 1,
              offset: Offset(10, 10),
              spreadRadius: 200
            ),
          ]),
    );
  }
}
