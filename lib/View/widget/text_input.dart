import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final IconData myIcon;
  final String myLabelText;
  final bool toHide;
  TextInputField({
    Key? key,
    required this.controller,
    required this.myIcon,
    required this.myLabelText,
    required this.toHide,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: toHide,
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          icon: Icon(myIcon),
          labelText: myLabelText,
          iconColor: borderColor,
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: borderColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: borderColor,
              ))),
    );
  }
}
