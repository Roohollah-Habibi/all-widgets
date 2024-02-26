import 'package:flutter/material.dart';
import '../utils/helper_text.dart';
import '../utils/helper_container.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({super.key});

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool isOnTapped = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isOnTapped = !isOnTapped;
      }),
      child: HelperContainer(
        child: AnimatedCrossFade(
            firstChild: const HelperText(
              text: 'Text One ',
              fontSize: 30,
            ),
            secondChild: const HelperText(
              text: 'Text Two',
              fontSize: 30,
            ),
            crossFadeState: isOnTapped
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)),
      ),
    );
  }
}
