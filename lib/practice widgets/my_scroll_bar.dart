import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyScrollBar extends StatefulWidget {
  const MyScrollBar({super.key});

  @override
  State<MyScrollBar> createState() => _MyScrollBarState();
}

class _MyScrollBarState extends State<MyScrollBar> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 20,
      controller: _controller,
      radius: Radius.circular(50),
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: HelperText(text: 'item $index'),
          ),
        ),
      ),
    );
  }
}
