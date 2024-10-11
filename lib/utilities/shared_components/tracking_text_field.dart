import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class TrackingTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const TrackingTextField({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFCADEC8), width: 0.0)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFCADEC8), width: 0.0),
          borderRadius: BorderRadius.circular(15)
        ),
        fillColor: const Color(0xFFCADEC8),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(AppColors.primaryColor),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/Group 33295.png", color: Colors.white,),
            ),
          ),
        ),
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.control_point, color: Color(AppColors.primaryColor),))
      ),
    );
  }
}