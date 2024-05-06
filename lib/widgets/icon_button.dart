import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color color,iconColor,textColor;
  final double buttonHeight,textSize,iconSize ;
  final IconData icon;
  final String text;
  const CustomIconButton({super.key, required this.color, required this.icon, required this.text, required this.textColor, required this.iconColor, required this.buttonHeight, required this.textSize, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: iconColor,size: iconSize,),
            SizedBox(width:5),
            Text(text,style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: textSize

            ))
          ],
        ),
      ),
    );
  }
}
