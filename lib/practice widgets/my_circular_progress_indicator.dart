import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(child: CircularProgressIndicator(
      color: Colors.white,
      backgroundColor: Colors.red,
      strokeWidth: 5,
      strokeAlign: 10,
    ),);
  }
}
