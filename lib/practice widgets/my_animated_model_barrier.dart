import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyAnimatedModalBarrier extends StatefulWidget {
  const MyAnimatedModalBarrier({super.key});

  @override
  State<MyAnimatedModalBarrier> createState() => _MyAnimatedModalBarrierState();
}

class _MyAnimatedModalBarrierState extends State<MyAnimatedModalBarrier>
    with TickerProviderStateMixin {
  bool onSelect = false;
  late Widget _animatedModelBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _animationColor;

  @override
  void initState() {
    ColorTween _colorTween =
        ColorTween(begin: Colors.purple.withOpacity(.5), end: Colors.orange.withOpacity(.5));
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animationColor = _colorTween.animate(_animationController);
    _animatedModelBarrier = AnimatedModalBarrier(
      color: _animationColor,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                HelperElevatedButton(
                    onPress: () {
                      setState(() {
                        onSelect = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          setState(() {
                            onSelect = false;
                          });
                        },
                      );
                    },
                    buttonName: 'Click Me'),
                if(onSelect) _animatedModelBarrier,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
