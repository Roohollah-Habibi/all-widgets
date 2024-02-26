import 'dart:math';

import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyTransform extends StatelessWidget {
  const MyTransform({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(pi * 1/2),
        child: Image.asset(
              'assets/nature.jpg',
              fit: BoxFit.cover,
            ),
      ),
    );
  }
}
