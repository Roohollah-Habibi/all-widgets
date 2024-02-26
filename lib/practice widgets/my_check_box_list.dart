import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyCheckBoxListTile extends StatefulWidget {
  const MyCheckBoxListTile({super.key});

  @override
  State<MyCheckBoxListTile> createState() => _MyCheckBoxListTileState();
}

class _MyCheckBoxListTileState extends State<MyCheckBoxListTile> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Card(
          color: Colors.cyan,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: const EdgeInsets.all(20),
            checkColor: Colors.white,
                activeColor: Colors.black,
                tristate: true,
                title: const HelperText(text: 'I Love Flutter',fontSize: 20,color: Colors.yellow,),
                subtitle: const HelperText(text: 'I need to learn more ',fontSize: 16,color: Colors.white,),
                value: isCheck,
                onChanged: (value) => setState(() {
          isCheck = value;
                }),
              ),
        ));
  }
}
