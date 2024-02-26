import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

const String src =
    'https://static.vecteezy.com/system/resources/previews/032/242/170/non_2x/beautiful-waterfall-flowers-water-nature-waterfall-hd-wallpaper-ai-generated-free-photo.jpg';

class MyColoredFilter extends StatelessWidget {
  const MyColoredFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      alignment: null,
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.yellow, BlendMode.color),
        child: Image.network(src, fit: BoxFit.cover),
      ),
    );
  }
}
