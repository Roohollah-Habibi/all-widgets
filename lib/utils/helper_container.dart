import 'package:flutter/material.dart';

class HelperContainer extends StatelessWidget {
  final Widget? child;
  final Alignment? alignment;
  final double height;
  final double width;
  final Color color;
  final double margin;
  final void Function()? onTap;
  const HelperContainer({
    super.key,
    required this.child,
    this.margin = 10,
    this.alignment = Alignment.center,
    this.height = 500,
    this.width = double.infinity,
    this.color = Colors.black12,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(margin),
          color: color,
          width: width,
          height: height,
          alignment: alignment,
          child: child,
        ),
      ),
    );
  }
}
