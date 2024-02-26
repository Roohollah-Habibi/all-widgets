import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return HelperContainer(
            child: HelperText(
              textAlign: TextAlign.center,
                text: 'LayoutBuilder widget is presenting...\n '
                    'Current max Width: ${constraints.maxWidth.round()} \n '
                    'Current min Width: ${constraints.minWidth.round()}',),
          );
        }else{
          return Center(child: Image.asset('assets/nature.jpg'));
        }
      },
    );
  }
}
