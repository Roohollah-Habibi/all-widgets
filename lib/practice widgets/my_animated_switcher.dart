import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  const MyAnimatedSwitcher({super.key});

  @override
  State<MyAnimatedSwitcher> createState() => _MyAnimatedSwitcherState();
}

class _MyAnimatedSwitcherState extends State<MyAnimatedSwitcher> {
  int _animatedCount = 0;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      onTap: () => setState(() {
        _animatedCount++;
      }),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: HelperText(
          text: '$_animatedCount',
          fontSize: 50,
          key: ValueKey(_animatedCount),
        ),
      ),
    );
  }
}
