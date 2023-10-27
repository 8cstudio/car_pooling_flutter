import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/Widgets/MyElevatedButton.dart';
import 'package:car_booking/Widgets/Textfield.dart';
import 'package:car_booking/screens/SignUp/components/SignUpForm.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: SignUpForm() ),
    );

  }
}