import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyListener extends StatefulWidget {
  const MyListener({super.key});

  @override
  State<MyListener> createState() => _MyListenerState();
}

class _MyListenerState extends State<MyListener> {
  int numOfPresses = 0;
  int numOfReleases = 0;
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) => setState(() {
        numOfPresses++;
        print('====> eventSize ${event.size}');
      }),
      onPointerUp: (event) => setState(() {
        setState(() {
          numOfReleases++;
          print('====> eventSizeOnRelease ${event.size}');
        });
      }),
      onPointerMove: (event) => setState(() {
        x = event.delta.dx;
        y = event.position.dy;
      }),
      child: HelperContainer(
        color: Colors.indigoAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HelperText(text: 'Presses: $numOfPresses'),
            HelperText(text: 'Releases: $numOfReleases'),
            HelperText(text: 'Coordination: (X ${x.round()}: Y ${y.round()})'),
          ],
        ),
      ),
    );
  }
}
