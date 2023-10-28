// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/constants.dart';
import 'package:car_booking/screens/SignUp/SignUp.dart';
import 'package:car_booking/Widgets/MyElevatedButton.dart';
import 'package:car_booking/Widgets/Textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logos/login_logo.png"),),
              ),
            ),
          ),
          const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: const Column(
              children: [
                CustomTextfield(
                  hintText: "Email or Phone number",
                ),
                LastTextField(
                  hintText: "Password",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [CustomText(text: "Forgot password?", color: appColorWhite,)],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: MyElevatedButton(
              onPressed: () {},
              child: const CustomText(
                text: 'Login',
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: "Don't have any account?", color: appColorWhite,),
              GestureDetector(
                onTap: () {
                  nextScreen(context, const SignUp());
                },
                child: const CustomText(
                  text: ' Sign Up Here',
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
