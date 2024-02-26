import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({super.key});

  @override
  State<MySimpleDialog> createState() => _MySimpleDialogState();
}

class _MySimpleDialogState extends State<MySimpleDialog> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: OutlinedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: Text('simple dialog title'),
              backgroundColor: Colors.blueGrey,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              alignment: Alignment.center,
              contentPadding: EdgeInsets.all(10),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel')),
                    ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text('Okey')),
                  ],
                )
              ],
            ),
          );
        },
        child: Text('Show Simple Dialog'),
      ),
    );
  }
}
