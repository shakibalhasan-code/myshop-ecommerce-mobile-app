import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class GreyBoxShape extends StatelessWidget {
  final Widget child;
  const GreyBoxShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: defaultGreyColor),
      child: child,
    );
  }
}
