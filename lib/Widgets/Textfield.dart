// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? readOnly ;
    final double? hintFontSize;
  const CustomTextfield({
    super.key, this.hintText, this.prefixIcon, this.suffixIcon, this.readOnly, this.hintFontSize,
  });

  @override
  Widget build(BuildContext context) {
    final readOnly = this.readOnly ?? false;
        final hintFontSize = this.hintFontSize ?? 17;

    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey),),
      ),
      child: TextField(
        readOnly: readOnly,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.8), fontSize: hintFontSize),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}


class LastTextField extends StatelessWidget {
  final String? hintText;
    final bool? readOnly ;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? hintColor;
  final double? hintFontSize;
  const LastTextField({
    super.key, this.hintText, this.prefixIcon, this.suffixIcon, this.readOnly, this.hintColor, this.hintFontSize,
  });

  @override
  Widget build(BuildContext context) {
        final readOnly = this.readOnly ?? false;
        final hintFontSize = this.hintFontSize ?? 17;
        
        final hintColor = this.hintColor ?? Colors.grey.withOpacity(.8);

    return Container(
      decoration: const BoxDecoration(
      ),
      child: TextField(
        readOnly: readOnly,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

