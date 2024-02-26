import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyReOrderedListView extends StatefulWidget {
  const MyReOrderedListView({super.key});

  @override
  State<MyReOrderedListView> createState() => _MyReOrderedListViewState();
}

class _MyReOrderedListViewState extends State<MyReOrderedListView> {
  List<String> myList = List.generate(30, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) => setState(() {
        if (oldIndex < newIndex) {
          newIndex -= 1;
          print('Old: $oldIndex , new: $newIndex');
        }
        final String item = myList.removeAt(oldIndex);
        myList.insert(newIndex, item);
      }),
      children: List.generate(
        myList.length,
        (index) => ListTile(
          key: Key(myList[index]),
          title: HelperText(text: myList[index]),
          trailing: const Icon(
            Icons.menu_outlined,
            size: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
