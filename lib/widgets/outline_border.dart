import 'package:flutter/material.dart';

class CustomOutLineWidget extends StatelessWidget {
  final Widget child;
  const CustomOutLineWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: Colors.grey),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: child,
      ),
    );
  }
}
