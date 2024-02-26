import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimationBuilder extends StatefulWidget {
  const MyAnimationBuilder({super.key});

  @override
  State<MyAnimationBuilder> createState() => _MyAnimationBuilderState();
}

class _MyAnimationBuilderState extends State<MyAnimationBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(
      seconds: 1,
    ),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow.shade300,
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        child: AnimatedBuilder(
          child: FlutterLogo(
            size: 100,
          ),
          animation: _controller,
          builder: (context, child){
            print(_controller.value);
            return
              // Transform.translate(offset: Offset(_controller.value * - 200, _controller.value ), child: child);
              Transform.scale(scale: _controller.value * 10.0 / pi, child: child);
            // Transform.rotate(angle: _controller.value * 2 * pi,child: child),
          }
        ),
      ),
    );
  }
}
