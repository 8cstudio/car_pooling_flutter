import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/screens/SignIn/components/LoginForm.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: const LoginForm(),
      ),
    );
  }
}
