import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyRawAutoComplete extends StatelessWidget {
  const MyRawAutoComplete({super.key});

  static const theList = ['herat', 'kabul', 'mazar', 'hesham', 'kabab'];

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete(
      optionsBuilder: (textEditingValue) {
        return theList.where((element) =>
            element.contains(textEditingValue.text.toLowerCase()));
      },
      optionsViewBuilder: (context, onSelected, options) {
        return Align(alignment: Alignment.topCenter,
          child: Padding(padding: const EdgeInsets.all(8),
            child: Material(elevation: 10,
              child: SizedBox(height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final String option = options.elementAt(index);
                    return GestureDetector(
                      onTap: () => onSelected(option),
                      child: ListTile(title: Text(option),),
                    );
                  },),),),),);
      },
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) =>
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              onFieldSubmitted: (value) => onFieldSubmitted(),
            ),
          ),
    );
  }
}
