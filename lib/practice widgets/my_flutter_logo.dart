import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyFlutterLogo extends StatelessWidget {
  const MyFlutterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
        child: FlutterLogo(
      size: 300,
          style: FlutterLogoStyle.horizontal,
    ),);
  }
}
