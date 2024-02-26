import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyExpensionTile extends StatefulWidget {
  const MyExpensionTile({super.key});

  @override
  State<MyExpensionTile> createState() => _MyExpensionTileState();
}

class _MyExpensionTileState extends State<MyExpensionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: ExpansionTile(
        controlAffinity: ListTileControlAffinity.leading,
        trailing: Icon(
          _isExpanded ? Icons.arrow_circle_up : Icons.arrow_circle_down,
          color: Colors.red,
          size: 40,
        ),
        onExpansionChanged: (value) => setState(() {
          _isExpanded = !_isExpanded;
        }),
        title: HelperText(text: 'text'),
        subtitle: HelperText(
          text: 'This is the subtitle',
          fontSize: 20,
          color: Colors.blue,
        ),
        backgroundColor: Colors.greenAccent,
        children: [Image.asset('assets/nature.jpg')],
      ),
    );
  }
}
