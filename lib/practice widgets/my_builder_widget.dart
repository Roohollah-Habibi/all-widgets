import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyBuilderWidget extends StatelessWidget {
  const MyBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Center(
        child: myTextWidget(),
      ),
    );
  }

  myTextWidget() {
    return Builder(builder: (context) {
      return Text(
        'my Text',
        style: Theme.of(context).textTheme.headlineLarge,
      );
    });
  }
}
