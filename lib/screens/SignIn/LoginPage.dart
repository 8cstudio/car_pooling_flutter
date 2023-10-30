// ignore_for_file: file_names

import 'package:car_booking/screens/SignIn/components/LoginForm.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(122, 7, 63, 167),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: const LoginForm(),
      ),
    );
  }
}
