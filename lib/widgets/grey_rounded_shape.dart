import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class GreyRoundedShape extends StatelessWidget {
  final Widget child;
  const GreyRoundedShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: defaultGreyColor),
      child: Padding(
        padding: EdgeInsets.all(15),
          child: child),
    );
  }
}
