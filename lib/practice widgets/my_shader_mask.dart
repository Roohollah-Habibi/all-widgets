import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyShaderMask extends StatelessWidget {
  const MyShaderMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) {
            return const RadialGradient(
              radius: 4,
              center: Alignment.center,
              colors: [Colors.orange, Colors.red,Colors.blue],
              // tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text(
            'This is a cool Text!!',
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
