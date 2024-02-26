import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          30,
          (index) => Card(
              color: Colors.blueGrey,
              child: ListTile(title: Text('Item $index'))),
        ),
      ),
    );
  }
}
