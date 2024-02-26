import 'package:flutter/material.dart';

class MySliverExtendList extends StatelessWidget {
  const MySliverExtendList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            childCount: 30,
            (context, index) => Card(
              color: Colors.blueGrey,
              child: Center(
                child: ListTile(
                  title: Text('Item $index'),
                  trailing: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
          itemExtent: 200,
        )
      ],
    );
  }
}
