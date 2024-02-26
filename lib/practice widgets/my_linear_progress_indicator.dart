import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyLinearProgressIndicator extends StatefulWidget {
  const MyLinearProgressIndicator({super.key});

  @override
  State<MyLinearProgressIndicator> createState() =>
      _MyLinearProgressIndicatorState();
}

class _MyLinearProgressIndicatorState extends State<MyLinearProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
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
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LinearProgressIndicator(
          value: _controller.value,
        ),
        const SizedBox(height: 30),
        const LinearProgressIndicator(),
      ],
    ));
  }
}
