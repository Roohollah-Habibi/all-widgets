import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

import '../utils/helper_button.dart';

const addSrc =
    'https://boffincoders.com/wp-content/uploads/2022/05/Flutter-3-1536x864.png';

class MyBanner extends StatefulWidget {
  const MyBanner({super.key});

  @override
  State<MyBanner> createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> with TickerProviderStateMixin {
  late AnimationController _controller;

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
    return HelperContainer(
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
