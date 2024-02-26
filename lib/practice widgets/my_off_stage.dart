import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyOffStage extends StatefulWidget {
  const MyOffStage({super.key});

  @override
  State<MyOffStage> createState() => _MyOffStageState();
}

class _MyOffStageState extends State<MyOffStage> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Offstage(
          offstage: isHide,
          child: const Icon(
            Icons.flutter_dash,
            size: 150,
            color: Colors.indigo,
          ),
        ),
        HelperElevatedButton(
            onPress: () {
              setState(() {
                isHide = !isHide;
              });
            },
            buttonName: 'is Hide = $isHide'),
      ],
    ));
  }
}
