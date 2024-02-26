import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyAnimationRotationTransition extends StatefulWidget {
  const MyAnimationRotationTransition({super.key});

  @override
  State<MyAnimationRotationTransition> createState() => _MyAnimationRotationTransitionState();
}

class _MyAnimationRotationTransitionState extends State<MyAnimationRotationTransition>
    with TickerProviderStateMixin {
  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  late final AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: RotationTransition(turns: _animation,child: FlutterLogo(size: 200,)),
    );
  }
}
