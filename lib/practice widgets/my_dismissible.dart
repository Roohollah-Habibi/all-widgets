import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyDismissible extends StatefulWidget {
  const MyDismissible({super.key});

  @override
  State<MyDismissible> createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  final List<String> items = List.generate(15, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    print(items);
    return HelperContainer(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Dismissible(
          movementDuration: const Duration(seconds: 4),
          onDismissed: (direction) => setState(() {
            items.removeAt(index);
          }),
          direction: DismissDirection.endToStart,
          key: ValueKey(items[index]),
          background: HelperContainer(
              height: 100,
              color: Colors.red.shade300,
              child: Icon(
                Icons.delete_forever_outlined,
                size: 40,
                color: Colors.red.shade900,
              )),
          child: customCard(index),
        ),
      ),
    );
  }

  Card customCard(int index) {
    return Card(
      color: Colors.lightBlue.shade900,
      elevation: 15,
      shadowColor: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        trailing: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            HelperText(text: 'swipe left to',fontSize: 13,color: Colors.yellow,),
            SizedBox(width: 10,),
            Icon(Icons.delete_forever_outlined,color: Colors.red,)
          ],
        ),
        title: HelperText(text: items[index]),
        leading: const Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
