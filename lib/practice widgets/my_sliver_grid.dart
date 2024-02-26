import 'dart:math';

import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MySliverGrid extends StatelessWidget {
  const MySliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 13,
                    (context, index) => Container(
                      alignment: Alignment.center,
                      color: Colors.orange[100 * (index % 9 + 1)],
                      child: ListTile(
                        title: HelperText(text: 'Item $index'),
                      ),
                    )),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 50,
              crossAxisSpacing: 5,

            ))
      ],
    );
  }
}
