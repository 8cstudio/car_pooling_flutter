// ignore_for_file: file_names

import 'package:car_booking/constants/constants.dart';
import 'package:car_booking/screens/SignIn/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:car_booking/Widgets/CustomText.dart';
import 'package:car_booking/Widgets/MyElevatedButton.dart';
import 'package:car_booking/Widgets/Textfield.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
          ),
        ),
        const Text(
          "Sign Up",
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
          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomTextfield(
                  hintText: "Full Name",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  hintText: "Phone Number",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  hintText: "Email or Phone number",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  hintText: "Pasword",
                ),
                LastTextField(
                  hintText: "Confirm Password",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: MyElevatedButton(
            onPressed: () {},
            child: const CustomText(
              text: 'Sign Up',
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Already have any account?",
              color: appColorWhite,
            ),
            GestureDetector(
              onTap: () {
                nextScreenReplacement(context, const LoginPage());
              },
              child: const CustomText(
                text: ' SignIn Here',
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
