import 'package:flutter/material.dart';

class MyRefreshIndicator extends StatefulWidget {
  const MyRefreshIndicator({super.key});

  @override
  State<MyRefreshIndicator> createState() => _MyRefreshIndicatorState();
}

class _MyRefreshIndicatorState extends State<MyRefreshIndicator> {
  List<String> items = ['item 1', 'item 2'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.orange,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => Card(
            color: Colors.blueGrey,
            elevation: 5,
              shadowColor: Colors.green,
            child: ListTile(
              titleTextStyle: const TextStyle(color: Colors.white,fontSize: 25),
              title: Text(items[index].toString()),
            ),
          ),
        ),
        onRefresh: () async {
          await Future.delayed(
            const Duration(seconds: 1),
          );
          int nextItem = items.length + 1;
          items.add('item $nextItem');
          setState(() {});
        },
      ),
    );
  }
}
