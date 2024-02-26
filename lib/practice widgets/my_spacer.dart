import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
          ),
          Spacer(flex: 2),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
          ),
          const Spacer(),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
