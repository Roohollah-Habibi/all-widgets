import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Card(
          elevation: 20,
          color: Colors.red.shade300,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const HelperText(
                  text: 'This is text inside Card widget',
                  fontSize: 17,
                  color: Colors.black,
                ),
                const SizedBox(height: 20,),
                HelperElevatedButton(onPress: () {
                  showDialog(context: context, builder: (context) => const AlertDialog(
                    icon: Icon(Icons.person,size: 50,color: Colors.orange,),
                    title: Text('Show Alert Dialog'),
                    content: Text('Content of the Alert Dialog'),
                    alignment: Alignment.center,
                  ),);
                }, buttonName: 'Click Me',height: 10,),
              ],
            ),
          )),
    );
  }
}
