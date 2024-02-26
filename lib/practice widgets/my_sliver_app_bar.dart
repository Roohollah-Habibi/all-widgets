import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('SliverAppBar title'),
          backgroundColor: const Color.fromARGB(255, 120, 171, 3),
          elevation: 40,
          pinned: true,
          floating: true,
          shadowColor: Colors.red,
          snap: true,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(background: Image.asset('assets/nature.jpg',fit: BoxFit.cover,)),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => Card(
                  child: ListTile(
                    title: HelperText(text: 'Item $index'),
                  ),
                )))
      ],
    );
  }
}
