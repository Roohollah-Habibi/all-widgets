import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyNotificationListener extends StatefulWidget {
  const MyNotificationListener({super.key});

  @override
  State<MyNotificationListener> createState() => _MyNotificationListenerState();
}

class _MyNotificationListenerState extends State<MyNotificationListener> {
  String myMsg = 'new';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange,
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: HelperText(
              text: myMsg,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollStartNotification) {
                setState(() {
                  myMsg = 'Scrolling...';
                });
              }
              else if (notification is ScrollUpdateNotification) {
                setState(() {
                  myMsg = 'Updating Scrolling...';
                });
              }
              else if (notification is ScrollEndNotification) {
                setState(() {
                  myMsg = 'Scrolling Ended...';
                });
              }
                return true;
            },
            child: ListView.builder(itemCount: 50,itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text('Item $index'),
              ),
            ),)
          ),
        ),
      ],
    );
  }
}
