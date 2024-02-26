import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyRotatedBox extends StatelessWidget {
  const MyRotatedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
        child: RotatedBox(
      quarterTurns: 2,
      child: FlutterLogo(size: 200,style: FlutterLogoStyle.stacked),
    ));
  }
}
