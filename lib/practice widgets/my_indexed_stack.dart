import 'package:app/utils/helper_button.dart';
import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

String url1 = 'https://cdn.sanity.io/images/tlr8oxjg/production/9f15109746df254c5a030a7ba9239f8a4bb5dadb-1456x816.png';
String url2 = 'https://swall.teahub.io/photos/small/17-178760_1920x1200-desktop-hd-love-birds-wallpapers-data-full.jpg';
String url3 = 'https://thumbs.dreamstime.com/b/cup-hot-arabic-coffee-coffee-beans-nice-pic-cup-hot-arabic-coffee-coffee-beans-nice-pic-291127877.jpg';
class MyIndexedStack extends StatefulWidget {
  const MyIndexedStack({super.key});

  @override
  State<MyIndexedStack> createState() => _MyIndexedStackState();
}

class _MyIndexedStackState extends State<MyIndexedStack> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HelperElevatedButton(
              height: 30,
              width: 110,
              onPress: () {
                setState(() {
                  index = 0;
                });
              },
              buttonName: 'Image One',
            ),
            HelperElevatedButton(
              height: 30,
              width: 110,
              onPress: () {
                setState(() {
                  index = 1;
                });
              },
              buttonName: 'Image Two',
            ),
            HelperElevatedButton(
              height: 30,
              width: 125,
              onPress: () {
                setState(() {
                  index = 2;
                });
              },
              buttonName: 'Image Three',
            ),
          ],
        ),
        IndexedStack(
          index: index,
            children: [
          Image.network(url1,),
          Image.network(url2),
          Image.network(url3),
        ]),
      ],
    ));
  }
}
