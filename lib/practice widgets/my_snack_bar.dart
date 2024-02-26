import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({super.key});

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: HelperElevatedButton(
      onPress: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () => showDialog(
                context: context,
                builder: (context) =>
                    AboutDialog(applicationIcon: Icon(Icons.info)),
              ),
            ),
            content: SizedBox(
                height: 300,
                width: double.infinity,
                child: Text('Successfully Running...')),
          ),
        );
      },
      buttonName: 'Show SnackBar',
    ));
  }
}
