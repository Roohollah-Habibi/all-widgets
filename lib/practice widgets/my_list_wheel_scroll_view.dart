import 'dart:math';

import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyListWheelScrollView extends StatelessWidget {
  const MyListWheelScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListWheelScrollView(
            itemExtent: 100,
            children: List.generate(
                100,
                (index) => Card(
                      color: Colors.orange.shade900,
                      child: ListTile(
                        title: HelperText(text: 'Item #$index'),
                        subtitle: HelperText(text: 'Price: ${(index * pi + 1).toStringAsFixed(2)}'),
                        trailing: const Icon(Icons.production_quantity_limits,size: 40,color: Colors.white,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        leading: Icon(Icons.alarm,color: Colors.indigo.shade900,size: 25,),
                      ),
                    ))));
  }
}
