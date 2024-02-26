import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyClipR extends StatelessWidget {
  const MyClipR({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ClipRRect(
        // clipper: CustomClipRRect(),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
            width: 300,
            height: 300,
        ),
      )
    );
  }
}
class CustomClipRRect extends CustomClipper<RRect>{
  @override
  RRect getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }


}
