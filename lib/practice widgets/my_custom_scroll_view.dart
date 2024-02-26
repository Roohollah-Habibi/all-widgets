import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyCustomScrollView extends StatelessWidget {
  const MyCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Container> myContainer = List.generate(
        50,
        (index) => Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Text('Item $index'),
              alignment: Alignment.center,
            ));

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 100,
            (context, index) => HelperContainer(child: Text('Item $index'),height: 50,),
          ),
        ),
      ],
    );
  }
}
