// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  const CustomTextfield({
    super.key, this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey),),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
          hintText: hintText,
        ),
      ),
    );
  }
}


class LastTextField extends StatelessWidget {
  final String? hintText;
  const LastTextField({
    super.key, this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
          hintText: hintText,
        ),
      ),
    );
  }
}

