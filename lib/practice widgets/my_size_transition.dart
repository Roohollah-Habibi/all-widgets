import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySizeTransition extends StatefulWidget {
  const MySizeTransition({super.key});

  @override
  State<MySizeTransition> createState() => _MySizeTransitionState();
}

class _MySizeTransitionState extends State<MySizeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))..repeat(reverse: true);
  late final Animation<double> _animation =
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: SizeTransition(
      axis: Axis.horizontal,
      axisAlignment: -1,
      sizeFactor: _animation,
      child: const FlutterLogo(
        size: 200,
      ),

    ));
  }
}
