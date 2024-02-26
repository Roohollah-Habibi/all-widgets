import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Card(
      child: ListTile(
        title: const HelperText(text: 'List tile Wid'),
        subtitle: const HelperText(text: 'Subtitle of list tile widget',fontSize: 16,),
        leading: const Icon(Icons.leaderboard),
        trailing: const Icon(Icons.account_box_outlined),
        tileColor: Colors.orange,
        iconColor: Colors.blue,
        selectedColor: Colors.green,
        selectedTileColor: Colors.red,
        onTap: () => setState(() {
          _selected = !_selected;
        }),
        selected: _selected,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        splashColor: Colors.indigo.shade900,

      ),
    ));
  }
}
