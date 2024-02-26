import 'package:flutter/material.dart';

class MyPhysicalModel extends StatelessWidget {
  const MyPhysicalModel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  PhysicalModel(
        color: Colors.orange,
        elevation: 40.0,
        shadowColor: Colors.blue,
        shape: BoxShape.circle,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Icon(
            Icons.flutter_dash_outlined,
            size: 150,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
