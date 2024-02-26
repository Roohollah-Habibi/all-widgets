import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MySizeOverFlowBox extends StatelessWidget {
  const MySizeOverFlowBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.indigo,
      child: SizedOverflowBox(
        size: Size(100, 100),
        child: HelperElevatedButton(onPress: () {}, buttonName: 'buttonName'),
      ),
    ));
  }
}
