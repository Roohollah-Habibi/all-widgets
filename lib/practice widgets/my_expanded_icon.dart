import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyExpandedIcon extends StatefulWidget {
  const MyExpandedIcon({super.key});

  @override
  State<MyExpandedIcon> createState() => _MyExpandedIconState();
}

class _MyExpandedIconState extends State<MyExpandedIcon> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      children: [
        Container(
          color: Colors.orange,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HelperText(text: 'Expanded Icon'),
              ExpandIcon(
                expandedColor: Colors.white,
                disabledColor: Colors.red,
                isExpanded: isExpanded,
                size: 40,
                color: isExpanded ? Colors.white : Colors.black,
                onPressed: (value) => setState(() {
                  isExpanded = !isExpanded;
                  print(value);
                }),
              ),
            ],
          ),
        ),
        if(isExpanded)
          const HelperText(text: 'Expanded Worked Correctly'),
        if(isExpanded)
        Expanded(child: Image.asset('assets/nature.jpg')),
      ],
    ));
  }
}
