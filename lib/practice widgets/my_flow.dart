import 'dart:math';

import 'package:app/utils/helper_container.dart';
import 'package:flutter/material.dart';

class MyFlow extends StatefulWidget {
  const MyFlow({super.key});

  @override
  State<MyFlow> createState() => _MyFlowState();
}

class _MyFlowState extends State<MyFlow> with TickerProviderStateMixin {
  final List<IconData> items = <IconData>[
    Icons.menu,
    Icons.account_box_outlined,
    Icons.notifications_active_outlined,
    Icons.exit_to_app_outlined,
  ];
  IconData lastIconSelected = Icons.account_box_outlined;
  late final AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HelperContainer(
      child: Flow(
        delegate: CustomFLowDelegate(animation: _controller),
        children:
            items.map((IconData iconData) => iconBuilder(iconData)).toList(),
      ),
    );
  }
  Widget iconBuilder(IconData icon) {
    return FloatingActionButton(
      backgroundColor: lastIconSelected == icon ? Colors.white :Colors.black,
      onPressed: () {
        setState(() {
          if(Icons.menu != icon){
            lastIconSelected = icon;
          }
          _controller.status == AnimationStatus.completed ? _controller.reverse() : _controller.forward();
        });
      },

      foregroundColor: lastIconSelected == icon ? Colors.purple :Colors.cyan,
      splashColor: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}

const buttonSize = 80;

class CustomFLowDelegate extends FlowDelegate {
  final Animation<double> animation;

  const CustomFLowDelegate({required this.animation})
      : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final xStart = size.width - 80;
    final yStart = size.height - 80;

    for (int i = context.childCount - 1; i >= 0; i--) {
      final childSize = context.getChildSize(i)!.width;
      const double margin = 10;
      final dx = i * (childSize + margin) * animation.value;
      final x = xStart - dx;
      final y = yStart;
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}

// class MyFlow extends StatefulWidget {
//   const MyFlow({super.key});
//
//   @override
//   State<MyFlow> createState() => _MyFlowState();
// }
//
// class IconBuilder extends StatelessWidget {
//   final IconData iconData;
//   final Function() onPress;
//   const IconBuilder(this.iconData, {super.key,required this.onPress,});
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       onPressed: onPress,
//       foregroundColor: Colors.orange,
//       backgroundColor: Colors.black,
//       splashColor: Colors.greenAccent,
//       child: Icon(iconData),
//     );
//   }
// }
//
// class _MyFlowState extends State<MyFlow> with TickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//       vsync: this, duration: const Duration(seconds: 1));
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//   final List<IconData> myIcons = const <IconData>[
//     Icons.menu,
//     Icons.notifications_active_outlined,
//     Icons.settings,
//     Icons.add_alarm,
//     Icons.exit_to_app,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return HelperContainer(
//       child: Flow(
//         delegate: CustomDelegate(animation: _controller),
//         children:
//             myIcons.map((IconData iconData) => IconBuilder(iconData,onPress:() {
//               setState(() {
//                 if(_controller.status == AnimationStatus.completed){
//                   _controller.reverse();
//                 }else{
//                   _controller.forward();
//                 }
//               });
//             },)).toList(),
//       ),
//     );
//   }
// }
//
// // const double buttonSize = 80.0;
// //
// // Widget buildIcons(IconData icon) => SizedBox(
// //       width: buttonSize,
// //       height: buttonSize,
// //       child: FloatingActionButton(
// //         backgroundColor: Colors.black,
// //         onPressed: () {},
// //         splashColor: Colors.black,
// //         elevation: 5,
// //         child: Icon(
// //           icon,
// //           size: 45,
// //           color: Colors.orange,
// //         ),
// //       ),
// //     );
//
// const buttonSize = 80;
//
// class CustomDelegate extends FlowDelegate {
//   final Animation<double> animation;
//   CustomDelegate({required this.animation}): super(repaint: animation);
//   @override
//   void paintChildren(FlowPaintingContext context) {
//     final size = context.size;
//     final xStart = size.width - buttonSize;
//     final yStart = size.height - buttonSize;
//
//     for (int i = context.childCount - 1; i >= 0; i--) {
//       int margin = 8;
//       final childSize = context.getChildSize(i)!.width;
//       final dx = i * (childSize + margin);
//       final x = xStart - dx * animation.value;
//       final y = yStart;
//       // اگر مایین به صورت عمودی باشه دی اکس - y = yStart
//       context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
//     }
//   }
//
//   @override
//   bool shouldRepaint(covariant FlowDelegate oldDelegate) {
//     return false;
//   }
// }
