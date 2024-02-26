import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySlideAnimation extends StatefulWidget {
  const MySlideAnimation({super.key});

  @override
  State<MySlideAnimation> createState() => _MySlideAnimationState();
}

class _MySlideAnimationState extends State<MySlideAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween(
          begin: Offset.zero, end: const Offset(0, 2))
      .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HelperContainer(
          child: SlideTransition(
              position: _animation,
              child: FlutterLogo(
                size: 150,
              ))),
    );
  }
}
