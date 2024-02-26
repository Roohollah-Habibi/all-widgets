import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyFadeInTransition extends StatefulWidget {
  const MyFadeInTransition({super.key});

  @override
  State<MyFadeInTransition> createState() => _MyFadeInTransitionState();
}

class _MyFadeInTransitionState extends State<MyFadeInTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(seconds: 1))
    ..repeat(reverse: true);

  late final Animation<double> animation = CurvedAnimation(
    parent: _controller, curve: Curves.easeInOut,);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: FadeTransition(opacity: animation,child: const FlutterLogo(size: 300,)),
    );
  }
}
