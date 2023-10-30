import 'package:flutter/material.dart';


const Color appColorWhite = Color(0xFFFFFFFF);
const Color appColorBlack = Colors.black;
const Color appColorYellow = Colors.amberAccent;

const Color appColorBlue = Color(0xFF4448FF);
const Color appColorGrey = Color.fromARGB(255, 119, 119, 126);

/////////////////////////////////
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: ((context) => page)));
}

void nextScreenReplacement(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: ((context) => page)));
}


