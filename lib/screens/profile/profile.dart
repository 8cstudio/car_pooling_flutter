import 'package:car_booking/Widgets/CustomText.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(text: "Profile"),
      ),
    );
  }
}