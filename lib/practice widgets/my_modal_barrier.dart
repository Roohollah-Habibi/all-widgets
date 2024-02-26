import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyModalBarrier extends StatefulWidget {
  const MyModalBarrier({super.key});

  @override
  State<MyModalBarrier> createState() => _MyModalBarrierState();
}

class _MyModalBarrierState extends State<MyModalBarrier> {
  bool activated = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Stack(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                activated = !activated;
              });
            },
            child: const Text('Click Me'),
          ),
          if(activated)Opacity(
            opacity: .4,
            child: ModalBarrier(

              color: Colors.orange.withOpacity(.5),
              dismissible: false,
              onDismiss: () => setState(() {
                activated = !activated;
              }),
            ),
          )
        ],
      ),
    );
  }
}
