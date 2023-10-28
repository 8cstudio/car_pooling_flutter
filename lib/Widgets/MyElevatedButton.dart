// ignore_for_file: file_names

import 'package:car_booking/constants.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  //final double? width;
  final double height;
  // final Gradient gradient;
  final Color? color;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    //this.width = 150.0,
    this.height = 44.0,
    // this.gradient =
    //     const LinearGradient(colors: [Colors.pinkAccent, Colors.greenAccent]), 
        this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(80);
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: height,
      
      decoration: BoxDecoration(
        color: shadowColorLight,
        
        // gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          //shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

