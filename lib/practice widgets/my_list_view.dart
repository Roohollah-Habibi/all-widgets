import 'dart:math';

import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

import '../utils/helper_text.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Item> myItems = List.generate(100, (index) => Item(itemName: 'Item #$index', price: index * pi));
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: ListView.separated(
          itemCount: myItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: HelperText(text: myItems[index].itemName),
                subtitle: HelperText(
                  text: myItems[index].price.toStringAsFixed(2),
                  fontSize: 16,
                ),
                leading: const Icon(Icons.leaderboard),
                trailing: const Icon(Icons.account_box_outlined),
                tileColor: Colors.orange.shade900,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 5,color: Colors.black,thickness: 5,endIndent: 20,indent: 20,);
        },
        ));
  }
}
class Item {
  final String itemName;
  final double price;
  Item({required this.itemName,required this.price});
}
