// ignore_for_file: file_names

import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontsize;
  const CustomText({super.key, required this.text, this.color, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return  Text( text, style: TextStyle(color: color , fontSize: fontsize),);
  }
}