import 'package:flutter/material.dart';

class MyShowAlertDialog extends StatefulWidget {
  const MyShowAlertDialog({super.key});

  @override
  State<MyShowAlertDialog> createState() => _MyShowAlertDialogState();
}

enum EnableOrDisable { enable, disable }

class _MyShowAlertDialogState extends State<MyShowAlertDialog> {
  bool selectAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            onPressed: () {
              setState(() {
                selectAbsorbing = !selectAbsorbing;
              });
            },
            child: Text(selectAbsorbing
                ? EnableOrDisable.enable.name
                : EnableOrDisable.disable.name),
          ),
          AbsorbPointer(
            absorbing: selectAbsorbing,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  backgroundColor:
                      selectAbsorbing ? Colors.red[400] : Colors.green),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    icon: Icon(
                      Icons.info,
                      size: 50,
                    ),
                    title: Text('Alert dialog Title'),
                    backgroundColor: Colors.yellow,
                    content: Text(
                        'Thi is the content of the dialog widget are you sure'),
                    alignment: Alignment.topCenter,
                    contentPadding: EdgeInsets.all(40),
                    elevation: 10,
                    iconColor: Colors.red,
                    contentTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    surfaceTintColor: Colors.red,
                    actions: [
                      Row(
                        children:
                        [
                        ElevatedButton(onPressed: (){}, child: Text('Apply'),),
                        ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Close'),),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,)
                    ],
                  ),
                );
              },
              child: Text('Click Me'),
            ),
          )
        ],
      ),
    );
  }
}
