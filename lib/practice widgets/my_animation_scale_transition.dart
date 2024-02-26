import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyAnimationScaleTransition extends StatefulWidget {
  const MyAnimationScaleTransition({super.key});

  @override
  State<MyAnimationScaleTransition> createState() =>
      _MyAnimationScaleTransitionState();
}

class _MyAnimationScaleTransitionState extends State<MyAnimationScaleTransition>
    with TickerProviderStateMixin {
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: ScaleTransition(
      scale: _animation,
      child: FlutterLogo(
        size: 250,
      ),
    ));
  }
}
