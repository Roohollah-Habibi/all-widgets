import 'package:flutter/material.dart';

class MyAnimationContainer extends StatefulWidget {
  const MyAnimationContainer({super.key});

  @override
  State<MyAnimationContainer> createState() => _MyAnimationContainerState();
}

class _MyAnimationContainerState extends State<MyAnimationContainer> {
  bool _animatedContainerSelection = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => setState(() {
          _animatedContainerSelection = !_animatedContainerSelection;
        }),
        child: Container(
          color: Colors.indigo.shade200,
          width: double.infinity,
          height: 500,
          child: AnimatedAlign(
            alignment: _animatedContainerSelection ? Alignment.bottomLeft : Alignment.topRight,
            duration: const Duration(seconds: 3),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              color: _animatedContainerSelection ? Colors.red : Colors.indigo,
              width: 200,
              height: 200,

            ),
          ),
        ),
      ),
    );
  }
}
