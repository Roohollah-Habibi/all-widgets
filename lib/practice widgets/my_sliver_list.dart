import 'dart:math';

import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MySliverList extends StatelessWidget {
  const MySliverList({super.key});
  final a = 12;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 15,(context, index) {
              print('index => $index');
              return Container(
                  color: Colors.lightBlue,
                  margin: EdgeInsets.all(10),
                  height: 100,
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: HelperText(text: 'Item text $index'),
                );
            }))
      ],
    );
  }
}
