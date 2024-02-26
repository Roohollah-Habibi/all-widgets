import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatelessWidget {
  const MyInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.symmetric(vertical: 500,horizontal: 200),
      child: HelperContainer(
        color: Colors.indigoAccent.shade400,
        height: MediaQuery.of(context).size.height * 90 / 100,
        child: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
                alignment: Alignment.center,
                child: const HelperText(text: 'Hello World'),
              ),
      ),
    );
  }
}
