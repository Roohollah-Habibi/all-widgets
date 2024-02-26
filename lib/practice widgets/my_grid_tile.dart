import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: GridTile(
        header: Container(
          color: Colors.blue.shade700.withOpacity(.5),
          height: 40,
          alignment: Alignment.center,
          child: HelperText(text: 'Header'),
        ),
        footer: Container(
          color: Colors.white.withOpacity(.5),
          height: 40,
          alignment: Alignment.center,
          child: HelperText(text: 'Footer',color: Colors.indigo.shade900,),
        ),
        child: Image.asset(
          'assets/nature.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
