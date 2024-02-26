import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyRawChip extends StatelessWidget {
  const MyRawChip({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: RawChip(
        label: HelperText(text: 'Raw widget'),
        padding: EdgeInsets.all(10),
        shadowColor: Colors.red.shade900,
        elevation: 10,
        avatar: Icon(Icons.person_2_outlined,size: 30,),
        deleteIcon: Icon(Icons.delete_outlined,size: 30,),
        deleteIconColor: Colors.red.shade900,
        onDeleted: (){},

      ),
    );
  }
}
