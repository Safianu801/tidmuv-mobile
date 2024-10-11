import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        height: 8,
        width: isActive ? 38 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360),
          color: isActive ? const Color(AppColors.primaryColor) : Colors.grey
        ),
      ),
    );
  }
}
