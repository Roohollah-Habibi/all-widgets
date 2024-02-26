import 'package:flutter/material.dart';

class MyPreferredSized extends StatelessWidget {
  const MyPreferredSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
            child: const SafeArea(
              child: Center(
                child: ListTile(
                  titleTextStyle: TextStyle(color: Colors.white,fontSize: 25),
                  title: Text('App bar'),
                  trailing: Icon(Icons.search),
                ),
              ),
            ),
          )),
    );
  }
}
