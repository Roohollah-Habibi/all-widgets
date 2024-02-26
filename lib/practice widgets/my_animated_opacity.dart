import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({super.key});

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  bool opacitySelection = true;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AnimatedOpacity(
            opacity: opacitySelection ? 0.1 : 1,
            duration: const Duration(seconds: 1),
            child: Image.asset(
              'assets/roohollah.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HelperElevatedButton(
            fontSize: 20,
              onPress: () => setState(() {
                    opacitySelection = !opacitySelection;
                  }),
              buttonName: 'Switch Opacity'),
        ),
      ],
    ));
  }
}
