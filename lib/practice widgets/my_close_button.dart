import 'package:flutter/material.dart';

import '../utils/helper_container.dart';
class MyCloseButton extends StatelessWidget {
  const MyCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    double getIconSize(Set<MaterialState> myStates){
      const Set<MaterialState> interactiveState = <MaterialState>{
        MaterialState.focused,
      };
      if(myStates.any((interactiveState.contains))){
        return 10;
      }else{
        return 100;
      }
    }
    return HelperContainer(
      child: CloseButton(
        color: Colors.red,
        style: ButtonStyle(
          iconSize: MaterialStateProperty.resolveWith(getIconSize),
        ),
        onPressed: (){},
      ),
    );
  }
}
