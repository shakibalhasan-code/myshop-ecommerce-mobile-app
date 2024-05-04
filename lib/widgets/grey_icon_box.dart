import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class GreyCustomIconBox extends StatelessWidget {
  final IconData icon;
  const GreyCustomIconBox({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: defaultGreyColor,
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
