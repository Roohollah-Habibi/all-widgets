import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 300
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
    ..lineTo(0, size.height)
    ..quadraticBezierTo(
        size.width / 4,
        size.height - 40,
        size.width / 2,
        size.height - 20)
    ..quadraticBezierTo(
        3 / 4 * size.width,
        size.height,
        size.width,
    size.height - 20)
    ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
