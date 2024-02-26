import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

import '../utils/helper_text.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      height: 900,
      color: Colors.red,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 5
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridTile(
            header: GridTileBar(
              backgroundColor: Colors.blue.shade700.withOpacity(.5),
              title: const HelperText(
                text: 'Header',
                fontSize: 16,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 20,
                  )),
              subtitle: const HelperText(
                  text: 'Subtitle Header text',
                  fontSize: 13,
                  color: Colors.red),
              leading: Icon(
                Icons.headphones,
                size: 20,
                color: Colors.indigo.shade900,
              ),
            ),
            footer: Container(
              color: Colors.white.withOpacity(.5),
              height: 40,
              alignment: Alignment.center,
              child: HelperText(
                text: 'Footer',
                color: Colors.indigo.shade900,
                fontSize: 18,
              ),
            ),
            child: Image.asset(
              'assets/nature.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
