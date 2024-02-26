import 'dart:ui';

import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

class MyBackDropFilter extends StatelessWidget {
  const MyBackDropFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Stack(
        children: [
          Text('0' * 10000,style: TextStyle(color: Colors.white),),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4, sigmaX: 2),
                child: Container(
                    height: 200,
                    width: 250,
                    alignment: Alignment.center,
                    child: HelperText(text: 'BackDropFilter')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
