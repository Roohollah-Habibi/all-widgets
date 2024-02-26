import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({super.key});
  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}
class _MyAnimatedListState extends State<MyAnimatedList>
    with TickerProviderStateMixin {
  final List<String> myList = [];
  final TextEditingController txtController = TextEditingController();
  final GlobalKey<AnimatedListState> _globalKey =
      GlobalKey<AnimatedListState>();

  @override
  void dispose() {
    txtController.dispose();
    super.dispose();
  }

  void addItem() {
    _globalKey.currentState!
        .insertItem(0, duration: const Duration(seconds: 1));
    myList.add(txtController.text);
  }

  void removeItem(int itemIndex) {
    _globalKey.currentState!.removeItem(
      itemIndex,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          width: double.infinity,
          height: 50,
          child: const HelperText(text: 'Deleted'),
        ),
      ),
      duration: const Duration(seconds: 1),
    );
    myList.removeAt(itemIndex);
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      color: Colors.indigo.shade200,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                customShowDialog(context);
              },
              icon: const Icon(
                Icons.add,
                size: 50,
              ),
              label: const HelperText(text: 'Add Customer'),
            ),
          ),
          Expanded(
            child: AnimatedList(
              key: _globalKey,
              initialItemCount: myList.length,
              itemBuilder: (context, index, animation) {
                print('$myList length => ${myList.length}');
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: customCardWidget(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> customShowDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add your Customer Here'),
        icon: const Icon(
          Icons.person,
          size: 50,
          color: Colors.greenAccent,
        ),
        content: TextField(
          controller: txtController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                txtController.text = '';
                Navigator.of(context).pop();
              },
              child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              addItem();
              txtController.text = '';
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          )
        ],
      ),
    );
  }

  Widget customCardWidget(int itemIndex) {
    return Card(
      key: UniqueKey(),
      color: Colors.lightGreen,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      elevation: 10,
      child: ListTile(
        title: HelperText(
          text: myList[itemIndex],
          fontSize: 20,
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              removeItem(itemIndex);
            });
          },
          icon: const Icon(
            Icons.delete_forever,
            size: 40,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
