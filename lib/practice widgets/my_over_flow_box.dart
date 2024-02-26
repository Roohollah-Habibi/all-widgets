import 'package:flutter/material.dart';

class MyOverFlowBox extends StatelessWidget {
  const MyOverFlowBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.orange,
        child: OverflowBox(
          maxWidth: 300,
          maxHeight: 300,
          child: Container(height: 300,width: 300,color: Colors.red.withOpacity(.5),),
        ),
      ),
    );
  }
}
