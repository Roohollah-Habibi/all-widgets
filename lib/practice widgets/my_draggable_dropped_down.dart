import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDraggable extends StatefulWidget {
  const MyDraggable({super.key});

  @override
  State<MyDraggable> createState() => _MyDraggableState();
}

class _MyDraggableState extends State<MyDraggable> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Draggable(
          data: 'Hello Flutter',
          feedback: Container(
            height: 100,
            width: 100,
            color: Colors.lightBlue.withOpacity(.5),
          ),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.lightBlue,
          ),
        ),
        Stack(children: [
          DragTarget <String>(
            onAccept: (data) => setState(() {
              print(data);
            }),
            onMove: (details) => print('method is called when moving inside target not out side'),
            onLeave: (data) => print('method is called when leaving the target or not accepted by the target'),
            onWillAccept: (data) => data == 'Hello Flutter',

            builder: (context, candidateData, rejectedData) => Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: const Center(
                  child: HelperText(
                    text: 'Drop target here',
                    color: Colors.white38,
                  )),
            ),
          ),
        ],),
      ],
    ));
  }
}
