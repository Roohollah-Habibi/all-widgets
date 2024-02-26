import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDraggableScrollable extends StatefulWidget {
  const MyDraggableScrollable({super.key});

  @override
  State<MyDraggableScrollable> createState() => _MyDraggableScrollableState();
}

class _MyDraggableScrollableState extends State<MyDraggableScrollable> {
  final List<String> items = List.generate(20, (index) => 'item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      alignment: Alignment.topCenter,
        child: DraggableScrollableSheet(
      builder: (context, scrollController) => Container(
        color: Colors.orange,
        child: ListView.builder(
          controller: scrollController,
          itemCount: items.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: HelperText(text: items[index]),
            ),
          ),
        ),
      ),
    ));
  }
}
