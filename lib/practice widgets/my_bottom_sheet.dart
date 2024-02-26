import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: HelperElevatedButton(
          onPress: () => setState(() {
                showModalBottomSheet(
                  backgroundColor: Colors.black,
                  barrierColor: Colors.lightGreen.shade300.withOpacity(.5),
                  isDismissible: false,
                  context: context,
                  builder: (context) => SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const HelperText(text: 'Show model bottom sheet'),
                          ElevatedButton(
                              onPressed: () => setState(() {
                                    Navigator.of(context).pop();
                                  }),
                              child: const Text('Close'))
                        ],
                      ),
                    ),
                  ),
                );
              }),
          buttonName: 'Show Bottom sheet'),
    );
  }
}
