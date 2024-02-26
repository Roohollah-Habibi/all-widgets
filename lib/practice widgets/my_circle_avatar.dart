import 'package:app/utils/helper_container.dart';
import 'package:app/utils/helper_text.dart';
import 'package:flutter/material.dart';

const imgUrl =
    'https://img.freepik.com/premium-photo/3d-render-cute-kitten-sitting-outdoors-nature-grass-observing-garden-beautiful-day_685067-1032.jpg';

class MyCircleAvatar extends StatefulWidget {
  const MyCircleAvatar({super.key});

  @override
  State<MyCircleAvatar> createState() => _MyCircleAvatarState();
}

class _MyCircleAvatarState extends State<MyCircleAvatar> {
  Color chipColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return const HelperContainer(
      child: CircleAvatar(
        radius: 170,
        backgroundColor: Colors.purple,
        backgroundImage: NetworkImage(imgUrl),
        child: Align(
          alignment: Alignment.bottomCenter,
            child: HelperText(
          text: 'Cute Cat',
          color: Colors.yellow,
          fontSize: 35,
        )),
      ),
    );
  }

  CircleAvatar customCircleAvatar(BuildContext context) {
    return CircleAvatar(
      onBackgroundImageError: (exception, stackTrace) {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            color: Colors.white,
            height: 200,
            width: double.infinity,
            child: Text('Image is not availible'),
          ),
        );
      },
      radius: 160,
      backgroundColor: Colors.red,
      foregroundColor: Colors.yellow,
      backgroundImage: NetworkImage(imgUrl),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Cute Cat',
          style: TextStyle(
            fontSize: 38,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
