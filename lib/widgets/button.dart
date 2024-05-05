import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Widget child;
  const CustomButton({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: child,
        ),
    );
  }
}
