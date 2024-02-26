import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class Item {
  String headerText;
  String subHeaderText;
  bool isExpanded;

  Item({
    required this.headerText,
    required this.subHeaderText,
    this.isExpanded = false,
  });
}

class MyExpansionList extends StatefulWidget {
  const MyExpansionList({super.key});

  @override
  State<MyExpansionList> createState() => _MyExpansionListState();
}

class _MyExpansionListState extends State<MyExpansionList> {
  List<Item> myItems = List.generate(
    10,
    (index) => Item(
        headerText: 'Header Text $index',
        subHeaderText: 'This is the sub header $index'),
  );

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      height: 600,
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) => setState(() {
            myItems[panelIndex].isExpanded = isExpanded;
          }),
          children: myItems
              .map(
                (Item item) => ExpansionPanel(
                  isExpanded: item.isExpanded,
                  headerBuilder: (context, isExpanded) =>
                      HelperText(text: item.headerText),
                  body: ListTile(
                    title: Text(item.subHeaderText),
                    subtitle: const Text(
                        'To delete this panel click on trash icon'),
                    trailing: const Icon(
                      Icons.delete_forever_outlined,
                      size: 35,
                      color: Colors.red,
                    ),
                    onTap: () => setState(() {
                      myItems.removeWhere(
                          (Item removableItem) => item == removableItem);
                    }),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
