import 'package:flutter/material.dart';

class MyAbsorbPointerWidget extends StatefulWidget {
  const MyAbsorbPointerWidget({super.key});

  @override
  State<MyAbsorbPointerWidget> createState() => _MyAbsorbPointerWidgetState();
}

enum EnableOrDisable { enable, disable }

class _MyAbsorbPointerWidgetState extends State<MyAbsorbPointerWidget> {
  bool selectAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectAbsorbing = !selectAbsorbing;
              });
            },
            child: Text(selectAbsorbing
                ? EnableOrDisable.enable.name
                : EnableOrDisable.disable.name),
          ),
          AbsorbPointer(
            absorbing: selectAbsorbing,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: selectAbsorbing ? Colors.red[400]: Colors.green
              ),
              onPressed: () {
                print('this is absorbing text');
              },
              child: Text('Click Me'),
            ),
          )
        ],
      ),
    );
  }
}
