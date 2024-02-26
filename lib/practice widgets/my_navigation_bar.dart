import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  List<Icon> myIcons = [
    const Icon(
      Icons.home,
      size: 30,
    ),
    const Icon(
      Icons.gavel_outlined,
      size: 30,
    ),
    const Icon(
      Icons.exit_to_app_outlined,
      size: 30,
    ),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.green,
        onDestinationSelected: (value) => setState(() {
          index = value;
        }),
        selectedIndex: index,
        destinations: [
          NavigationDestination(icon: myIcons[0], label: 'Home'),
          NavigationDestination(icon: myIcons[1], label: 'Construction'),
          NavigationDestination(icon: myIcons[2], label: 'Exit'),
        ],
      ),
      body: Center(child: myIcons[index]),
    );
  }
}
