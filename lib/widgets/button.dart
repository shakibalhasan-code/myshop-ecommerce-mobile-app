import 'package:flutter/material.dart';

class CustomAddCartButton extends StatelessWidget {
  final Color color;
  const CustomAddCartButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_shopping_cart_rounded,color: Colors.white,size: 20,),
            SizedBox(width: 8,),
            Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
