import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class TestRawAutoComplete extends StatefulWidget {
  const TestRawAutoComplete({super.key});

  @override
  State<TestRawAutoComplete> createState() => _TestRawAutoCompleteState();
}

class _TestRawAutoCompleteState extends State<TestRawAutoComplete> {
  List<String> myItems = [
    'roohollah',
    'maryam',
    'mohammad taha',
    'sara',
    'majid',
    'iliya',
    'elena'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Autocomplete<String>(
            // onSelected: (option) => ,
            optionsBuilder: (textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable.empty();
              } else {
                return myItems.where(
                  (String name) => name
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase()),
                );
              }
            },
            optionsViewBuilder: (context, onSelected, options) {
              return Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  child: Material(
                    elevation: 5,
                    color: Colors.black,
                    shadowColor: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    child: ListView.separated(
                      padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) => ListTile(
                              title: Text(
                                options.elementAt(index),
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              trailing: const Icon(Icons.check,
                                  size: 30, color: Colors.greenAccent),
                              onTap: () {
                                onSelected(options.elementAt(index).toString());
                              },
                            ),
                        separatorBuilder: (context, index) => buildDivider(),
                        itemCount: options.length),
                  ),
                ),
              );
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: TextFormField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onFieldSubmitted: (value) => onFieldSubmitted,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.back_hand_outlined),
                    labelStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    iconColor: Colors.greenAccent,
                    focusColor: Colors.yellow,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    contentPadding: EdgeInsets.all(12),
                    label: Text('Type some thing here'),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Divider buildDivider() => const Divider(
        color: Colors.yellow,
        thickness: 1,
        height: 3,
        indent: 5,
        endIndent: 5,
      );
}
