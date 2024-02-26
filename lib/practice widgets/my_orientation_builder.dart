import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyOrientationBuilder extends StatefulWidget {
  const MyOrientationBuilder({super.key});

  @override
  State<MyOrientationBuilder> createState() => _MyOrientationBuilderState();
}

class _MyOrientationBuilderState extends State<MyOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return HelperContainer(child: OrientationBuilder(builder: (context, orientation) {
      if(orientation == Orientation.portrait){
        return const HelperText(text: 'Orientation is Portrate');
      }else{
        return const HelperText(text:'Orientation is LandScape');
      }
    },));
  }
}
