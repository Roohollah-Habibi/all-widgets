import 'package:flutter/material.dart';

class MyPhysicalShape extends StatelessWidget {
  const MyPhysicalShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: PhysicalShape(
          elevation: 20,
          shadowColor: Colors.indigo,
          clipper: ShapeBorderClipper(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          ),
          color: Colors.greenAccent,
          child: const Center(
            child: Icon(
              Icons.flutter_dash,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
