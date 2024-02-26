import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDecoratedBoxTransition extends StatefulWidget {
  const MyDecoratedBoxTransition({super.key});

  @override
  State<MyDecoratedBoxTransition> createState() =>
      _MyDecoratedBoxTransitionState();
}

class _MyDecoratedBoxTransitionState extends State<MyDecoratedBoxTransition>
    with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(style: BorderStyle.none),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              blurRadius: 10,
              spreadRadius: 3,
              color: Colors.black54,
              offset: Offset(3, 5)),
        ]),
    end: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.zero,
      border: Border.all(style: BorderStyle.none),
    ),
  );
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1000))
    ..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      color: Colors.white,
      child: DecoratedBoxTransition(
        decoration: decorationTween.animate(_controller),
        child: const SizedBox(
          height: 200,
          width: 300,
          child: Center(
            child: HelperText(
              text: 'Decorated Box Transition',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
