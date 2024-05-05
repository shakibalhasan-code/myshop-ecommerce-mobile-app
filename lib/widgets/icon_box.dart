import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomIconBox extends StatelessWidget {
  final Color containerColor;
  final Widget child;
  const CustomIconBox({super.key, required this.containerColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
