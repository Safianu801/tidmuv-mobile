import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconButton? suffixIcon;
  final bool isObscure;
  const CustomTextField({super.key, required this.hintText, required this.controller, this.suffixIcon, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 1)
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.grey
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.grey,
        contentPadding: const EdgeInsets.all(10)
      ),
    );
  }
}
