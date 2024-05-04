import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class MainBoxShape extends StatelessWidget {
  final Widget child;
  const MainBoxShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: defaultMainColor),
      child: child,
    );
  }
}
