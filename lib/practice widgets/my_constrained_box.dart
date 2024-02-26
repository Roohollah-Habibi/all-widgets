import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HelperContainer(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 300,
            maxWidth: 900,
          ),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
