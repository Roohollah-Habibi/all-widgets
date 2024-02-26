import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({super.key});

  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  String _title = 'Popup Menu Button';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.yellow.shade500,
        child: ListTile(
          title: HelperText(text: _title),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'item One',child: Text('Item One'),),
              const PopupMenuItem(value: 'item Two',child: Text('Item Two'),),
            ],
            onSelected: (value) => setState(() {
              _title = value;
            }),
          ),
        ),
      ),
    );
  }
}
