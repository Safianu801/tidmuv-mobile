import 'package:flutter/material.dart';
import 'package:tidmuv/utilities/constants/app_colors.dart';

class ProfileQuickActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  const ProfileQuickActionButton({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color(AppColors.primaryColor).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
                const Icon(Icons.chevron_right, color: Colors.grey,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
