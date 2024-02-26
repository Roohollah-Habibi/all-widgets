import 'package:flutter/material.dart';

class MyFlowtingActionButton extends StatelessWidget {
  const MyFlowtingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(Icons.add),
      ),
    );
  }
}
