import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyLimitedBox extends StatelessWidget {
  const MyLimitedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: LimitedBox(
        maxHeight: 50, //<<<<<<<<<============================
        maxWidth: 300,
        child: Card(
          child: ListTile(
            title: HelperText(text: ' Limited Box'),
            leading: Icon(Icons.person,size: 50,),
          ),
        ),
      ),
    ));
  }
}
