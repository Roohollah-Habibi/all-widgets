import 'package:flutter/material.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({super.key});

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  bool alignSelection = true;
  Alignment myAlignment = Alignment.topRight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ()=>setState(() {
          alignSelection = !alignSelection;
          myAlignment = alignSelection ? Alignment.bottomLeft : Alignment.topCenter;
        }),
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.black,
          child: AnimatedAlign(
            curve: Curves.fastOutSlowIn,
            alignment: myAlignment,
            // alignment: alignSelection ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
