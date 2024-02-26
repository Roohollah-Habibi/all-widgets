import 'package:flutter/material.dart';

class MyTabPageSelector extends StatefulWidget {
  const MyTabPageSelector({super.key});

  @override
  State<MyTabPageSelector> createState() => _MyTabPageSelectorState();
}

List<Widget> myList = const [
  Icon(Icons.home, size: 30),
  Icon(Icons.person, size: 30),
  Icon(Icons.settings, size: 30),
];

class _MyTabPageSelectorState extends State<MyTabPageSelector>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;
  int index = 0;

  @override
  void initState() {
    _controller =
        TabController(length: myList.length, vsync: this, initialIndex: index);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: _controller,
            children: myList,
          ),
          Positioned(
              bottom: 40,
              child: TabPageSelector(
                controller: _controller,
                color: Colors.red,
                selectedColor: Colors.yellow,
                indicatorSize: 20,
              )),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (index != myList.length -1) ? index++ : index = 0;
              _controller.animateTo(index);
            },
            child: const Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
