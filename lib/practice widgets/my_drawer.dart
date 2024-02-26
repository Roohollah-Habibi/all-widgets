import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Builder(
          builder: (context) {
            return HelperElevatedButton(onPress: () {
              Scaffold.of(context).openDrawer();
            }, buttonName: 'Click Me');
          }
        ));
  }
}
