import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedSize extends StatefulWidget {
  const MyAnimatedSize({super.key});

  @override
  State<MyAnimatedSize> createState() => _MyAnimatedSizeState();
}

class _MyAnimatedSizeState extends State<MyAnimatedSize> {
  double _onSize = 100;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      onTap: ()=>setState(() {
        _onSize = _onSize == 100 ? 500 : 100;
      }),
      child: AnimatedSize(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: FlutterLogo(size: _onSize,),
      ),
    );
  }
}
