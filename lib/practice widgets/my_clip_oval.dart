import 'dart:math';

import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyClipOval extends StatefulWidget {
  const MyClipOval({super.key});

  @override
  State<MyClipOval> createState() => _MyClipOvalState();
}

class _MyClipOvalState extends State<MyClipOval> {
  Color chipColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ClipOval(
        clipper: MyCustomClipper(),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          alignment: Alignment.center,
          child: const HelperText(
            text: 'Flutter',
            textAlign: TextAlign.center,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
// اگر فلاتر انسپکتور را روشن کنیم متوجه تغییرات میشویم
class MyCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(center: Offset(100, 40),radius: 100);
    return Rect.fromLTRB(0,0,300,300);
    return Rect.fromCenter(
      width: size.width,
      height: size.height,
      center: Offset(size.width, size.height - 100),
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
