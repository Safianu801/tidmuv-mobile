import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomTextFieldTwo extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFieldTwo(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent, width: 0.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent)),
          hintText: hintText),
      keyboardType: TextInputType.number,
    );
  }
}
