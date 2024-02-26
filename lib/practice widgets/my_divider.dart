import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(color: Colors.orange,width: double.infinity,height: 200,),
         Divider(
          color: Colors.indigo.shade900,
           thickness: 10,
           indent: 20,
           endIndent: 20,
           height: 50,
        ),
        Container(color: Colors.orange,width: double.infinity,height: 200,),
      ],
    ));
  }
}
