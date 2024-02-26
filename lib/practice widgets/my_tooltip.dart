import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyTooltip extends StatelessWidget {
  const MyTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Tooltip(
        message: 'This is a nature',
        child: Image.asset(
          'assets/nature.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
