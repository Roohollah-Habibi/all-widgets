import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MySwitchList extends StatefulWidget {
  const MySwitchList({super.key});

  @override
  State<MySwitchList> createState() => _MySwitchListState();
}

class _MySwitchListState extends State<MySwitchList> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: HelperText(text: 'Switch list tile',color: Colors.lightBlue,),
        subtitle: HelperText(text: 'subtitle of switch list tile',fontSize: 17,color: Colors.yellow,),
        controlAffinity: ListTileControlAffinity.leading,
        isThreeLine: true,
        secondary: Icon(Icons.add_a_photo,size: 25,),
        value: _isSwitch,
        onChanged: (value) => setState(() {
          _isSwitch = value;
        }),
      ),
    );
  }
}
