import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Home',
              icon: Icon(Icons.home_filled),
            ),
            Tab(
              text: 'Setting',
              icon: Icon(Icons.settings),
            ),
            Tab(
              text: 'Alarm',
              icon: Icon(Icons.alarm),
            ),
          ]),
          title: Text('Tab bar widget'),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.greenAccent,
            alignment: Alignment.center,
            child: const Icon(
              Icons.home,
              size: 50,
            ),
          ),Container(
            color: Colors.orange,
            alignment: Alignment.center,
            child: const Icon(
              Icons.settings,
              size: 50,
            ),
          ),Container(
            color: Colors.pink,
            alignment: Alignment.center,
            child: const Icon(
              Icons.alarm,
              size: 50,
            ),
          ),
        ]),
      ),
    );
  }
}
