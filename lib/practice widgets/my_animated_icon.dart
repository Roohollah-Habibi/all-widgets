import 'package:flutter/material.dart';
import 'package:app/utils/helper_container.dart';

class MyAnimatedIcon extends StatefulWidget {
  const MyAnimatedIcon({super.key});

  @override
  State<MyAnimatedIcon> createState() => _MyAnimatedIconState();
}

class _MyAnimatedIconState extends State<MyAnimatedIcon> with TickerProviderStateMixin{
  bool _isOnTapped = true;
  // انیمیشن کنترولر را داخل اینیت استیت هم میشه که بنویسیم. بخاطری که کیورد late داریم
  late AnimationController myAnimation = AnimationController(
    duration: const Duration(milliseconds: 300),
    value: -2,
    vsync: this,
  )..forward();
  // در صورتی که دونقطه فوروارد اجرا نکینم میشه که داخل onTab از روش شرطی پیش بریم و از کامنت بیرون کنیم کد هارا
  @override
  void dispose() {
    myAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _isOnTapped ? myAnimation.reverse() : myAnimation.forward();
        _isOnTapped = !_isOnTapped;
        // if(_isOnTapped){
        //   myAnimation.forward();
        //   _isOnTapped = false;
        // }else{
        //   myAnimation.reverse();
        //       _isOnTapped = true;
        // }
      }),
      child: HelperContainer(
        child: AnimatedIcon(
          size: 150,
          progress: myAnimation,
          icon: AnimatedIcons.play_pause,
        ),
      ),
    );
  }
}
