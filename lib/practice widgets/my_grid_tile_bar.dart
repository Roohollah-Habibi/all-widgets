import 'package:flutter/material.dart';

import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';

class MyGridTileBar extends StatelessWidget {
  const MyGridTileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: GridTile(
        header: GridTileBar(
          backgroundColor: Colors.blue.shade700.withOpacity(.5),
          title: const HelperText(text: 'Header'),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 40,)),
          subtitle: const HelperText(text: 'Subtitle Header text',fontSize: 16,color: Colors.red),
          leading: Icon(Icons.headphones,size: 35,color: Colors.indigo.shade900,),
        ),
        footer: Container(
          color: Colors.white.withOpacity(.5),
          height: 40,
          alignment: Alignment.center,
          child: HelperText(
            text: 'Footer',
            color: Colors.indigo.shade900,
          ),
        ),
        child: Image.asset(
          'assets/nature.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
