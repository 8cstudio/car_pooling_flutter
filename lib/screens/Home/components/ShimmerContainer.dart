// ignore_for_file: file_names

import 'package:car_booking/constants/constants.dart';
import 'package:flutter/material.dart';
class ShimmerContainerEffect extends StatelessWidget {
  final double? width;
  final double? height;

  const ShimmerContainerEffect({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final height = this.height ?? 40;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: appColorGrey,
      ),
    );
  }
}
