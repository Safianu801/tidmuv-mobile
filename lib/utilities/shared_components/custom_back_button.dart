import 'package:flutter/material.dart';

class CustomBackButton extends StatefulWidget {
  final BuildContext context;
  const CustomBackButton({super.key, required this.context});

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(widget.context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8)
          ),
          child: const Center(child: Icon(Icons.chevron_left)),
        ),
      ),
    );
  }
}
