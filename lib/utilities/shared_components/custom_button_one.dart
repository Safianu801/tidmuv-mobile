import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class CustomButtonOne extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  const CustomButtonOne({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
          ),
        ),
      ),
    );
  }
}
