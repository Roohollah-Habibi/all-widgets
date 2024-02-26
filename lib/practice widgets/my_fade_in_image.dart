import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyFadeInImage extends StatefulWidget {
  const MyFadeInImage({super.key});

  @override
  State<MyFadeInImage> createState() => _MyFadeInImageState();
}

class _MyFadeInImageState extends State<MyFadeInImage> {
  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
        child: FadeInImage(
            placeholder: AssetImage('assets/nature.jpg'),
            image: AssetImage('assets/roohollah.jpg')));
  }
}
