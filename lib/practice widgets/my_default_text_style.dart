import 'package:flutter/material.dart';

import '../utils/helper_container.dart';

class MyDefaultTextStyle extends StatelessWidget {
  const MyDefaultTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Flutter Text'),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            child: Column(children: [
              Text('Flutter Text'),
              Text('Flutter Text',style: TextStyle(fontSize: 36,),),
              Text('Flutter Text',style: TextStyle(color: Colors.red,),),
              Text('Flutter Text',style: TextStyle(backgroundColor: Colors.yellow,),),
            ],),
          ),

        ],
      ),
    );
  }
}
