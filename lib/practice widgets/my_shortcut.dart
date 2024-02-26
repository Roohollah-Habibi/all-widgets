import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Increment extends Intent {
  const Increment();
}

class Decrement extends Intent {
  const Decrement();
}

class MyShortcut extends StatefulWidget {
  const MyShortcut({super.key});

  @override
  State<MyShortcut> createState() => _MyShortcutState();
}

class _MyShortcutState extends State<MyShortcut> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Shortcuts(
        shortcuts: <ShortcutActivator, Intent>{
          LogicalKeySet(LogicalKeyboardKey.arrowUp): const Increment(),
          LogicalKeySet(LogicalKeyboardKey.arrowDown): const Decrement(),
        },
        child: Actions(
          actions: {
            Increment: CallbackAction(
              onInvoke: (intent) => setState(() {
                counter++;
              }),
            ),
            Decrement: CallbackAction(
              onInvoke: (intent) => setState(() {
                counter--;
              }),
            )
          },
          child: Focus(
            child: HelperText(text: 'Counter: $counter'),
          ),
        ),
      ),
    );
  }
}
