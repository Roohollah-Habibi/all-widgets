import 'package:flutter/material.dart';

class MyLongPressDraggble extends StatefulWidget {
  const MyLongPressDraggble({super.key});
  @override
  State<MyLongPressDraggble> createState() => _MyLongPressDraggbleState();
}

class _MyLongPressDraggbleState extends State<MyLongPressDraggble> {
  Offset location = Offset(100, 100);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
      Stack(
        children: [
          Positioned(
            left: location.dx,
            top: location.dy,
            child: LongPressDraggable(
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Image.asset('assets/roohollah.jpg',fit: BoxFit.cover,color: Colors.yellow.shade600,colorBlendMode: BlendMode.colorBurn,),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Image.asset('assets/roohollah.jpg',fit: BoxFit.cover,),
              ),
            onDragEnd: (details) {
              setState(() {
                double adjustment = MediaQuery.of(context).size.height - constraints.maxHeight;
                location = Offset(details.offset.dx, details.offset.dy - adjustment);
                print('ScreenHeight: ${MediaQuery.of(context).size.height}');
                print('ConstrainedScreen: ${constraints.maxHeight}');
              });
            },),
          ),
        ],
      ),
    );
  }
}
