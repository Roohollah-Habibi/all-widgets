import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  const MyColoredBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
      child: ColoredBox(
        color: Colors.orange,
        child: SizedBox(
          height: 100,
            width: 100,
          child: Center(
            child: HelperText(
              text: 'Hello Flutter',textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
