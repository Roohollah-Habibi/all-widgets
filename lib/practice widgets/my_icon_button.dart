import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({super.key});

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  int _onClicked = 0;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HelperText(text: _onClicked.toString()),
          IconButton(
              onPressed: () {
                setState(() {
                  _onClicked++;
                });
              },
              icon: const Icon(
                Icons.add_to_photos,
                color: Colors.indigo,
                size: 40,
              )),
        ],
      ),
    );
  }
}
