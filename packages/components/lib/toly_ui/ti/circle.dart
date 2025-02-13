import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Color color;
  final double radius;
  final bool showShadow;
  final Widget? child;

   const Circle({super.key, this.color=Colors.blue, this.radius=6,this.showShadow=true,this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 2*radius,
      height: 2*radius,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
          const BoxShadow(
          color: Colors.grey,
          offset: Offset(.5,.5),
          blurRadius: .5,
        )]
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
