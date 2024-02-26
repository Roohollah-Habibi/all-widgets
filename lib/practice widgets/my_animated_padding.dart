import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedPadding extends StatefulWidget {
  const MyAnimatedPadding({super.key});

  @override
  State<MyAnimatedPadding> createState() => _MyAnimatedPaddingState();
}

class _MyAnimatedPaddingState extends State<MyAnimatedPadding> {
  double _padValue = 3;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HelperElevatedButton(
            fontSize: 20,
            onPress: () => setState(() {
                  _padValue = _padValue == 3 ? 100 : 3 ;

                }),
            buttonName: 'Change padding'),
        const SizedBox(height: 5),
        HelperText(text: 'Current Padding = $_padValue'),
        const SizedBox(height: 20),

        AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.symmetric(horizontal: _padValue),
          child: Container(
            color: Colors.yellow,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
          ),
        )
      ],
    )));
  }
}
