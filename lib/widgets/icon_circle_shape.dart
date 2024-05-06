import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomIconCircleShape extends StatelessWidget {
  final Color containerColor;
  final IconData icon;
  final VoidCallback onTap;
  const CustomIconCircleShape({super.key, required this.containerColor, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(icon),
        ),
      ),
    );
  }
}
