import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

import '../utils/helper_button.dart';

const addSrc =
    'https://boffincoders.com/wp-content/uploads/2022/05/Flutter-3-1536x864.png';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  final List<String> items = ['Home', 'Cart', 'Person'];
  int _currentIndex = 0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        elevation: 20,
        iconSize: 40,
        selectedFontSize: 20,
        currentIndex: _currentIndex,
        onTap: (int newIndex) => setState(() {
          _currentIndex = newIndex;
        }),
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.card_travel_rounded)),
          BottomNavigationBarItem(label: 'profile', icon: Icon(Icons.person)),
        ],
      ),
      body: HelperContainer(
        height: 300,
        child: ClipRect(
          child: customBanner(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    child: Image.network(addSrc),
                  ),
                  customRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const HelperText(
          text: 'Learn Flutter (Beginner)',
          color: Colors.black,
          fontSize: 20,
        ),
        HelperElevatedButton(
          onPress: () {},
          buttonName: 'Lets Go',
          height: 40,
          width: 110,
          backgroundColor: const Color.fromARGB(255, 0, 14, 85),
          foregroundColor: Colors.white,
        ),
      ],
    ),
  );
}

Widget customBanner({Widget? child}) {
  return Banner(
    message: '25% OFF',
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.red,
    ),
    location: BannerLocation.topEnd,
    child: child,
  );
}
