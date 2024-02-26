import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      color: Colors.black,
      child: RichText(
        text: const TextSpan(
          text: 'to the ',
          style: TextStyle(fontSize: 30, color: Colors.orange),
          children: [
            TextSpan(
                text: 'moon',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Colors.white)),
            TextSpan(text: ' and beyound'),
          ],
        ),
      ),
    );
  }
}
