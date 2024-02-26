import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: MaterialButton(
      onPressed: () {},
      color: Colors.blueGrey,
          highlightColor: Colors.orange,
          splashColor: Colors.red,
          height: 100,
          minWidth: 200,
          elevation: 20,
          child: const Text('Click Me',style: TextStyle(fontSize: 28),),

    ));
  }
}
