import 'package:flutter/material.dart';

class MyAlignWidget extends StatelessWidget {
  const MyAlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow.shade700,
        width: double.infinity,
        height: 300,
        child: const Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
