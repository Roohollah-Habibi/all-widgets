import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.indigo,
          width: double.infinity,
          height: 500,
          alignment: Alignment.center,
          child: const HelperText(text: 'Page One'),
        ),Container(
          color: Colors.green,
          width: double.infinity,
          height: 500,
          alignment: Alignment.center,
          child: const HelperText(text: 'Page Two'),
        ),Container(
          color: Colors.yellow,
          width: double.infinity,
          height: 500,
          alignment: Alignment.center,
          child: const HelperText(text: 'Page Three'),
        ),
      ],
    );
  }
}
