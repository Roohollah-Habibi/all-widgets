import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyIgnorePointer extends StatefulWidget {
  const MyIgnorePointer({super.key});

  @override
  State<MyIgnorePointer> createState() => _MyIgnorePointerState();
}

class _MyIgnorePointerState extends State<MyIgnorePointer> {
  bool _isIgnore = false;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/nature.jpg'),color: Colors.blue,colorBlendMode: BlendMode.colorBurn,),
        const SizedBox(height: 30,),
        HelperElevatedButton(
          backgroundColor: _isIgnore ? Colors.green : Colors.red,
          onPress: () {
            setState(() {
              _isIgnore = !_isIgnore;
            });
          },
          buttonName: _isIgnore ? 'Enable' : 'Disable',
        ),
        const SizedBox(height: 30),
        IgnorePointer(
          ignoring: _isIgnore,
          child: HelperElevatedButton(
            onPress: () {

            },
            backgroundColor: _isIgnore ? Colors.red : Colors.green,
            buttonName: _isIgnore ? 'I am Disabled' : 'I am Enabled',
          ),
        ),
      ],
    ));
  }
}
