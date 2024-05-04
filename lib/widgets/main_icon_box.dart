import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class MainCustomIconBox extends StatelessWidget {
  final IconData icon;
  const MainCustomIconBox({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: defaultMainColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
