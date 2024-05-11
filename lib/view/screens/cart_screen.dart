import 'package:e_shop/view/itemview/added_cart_item.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 10,top: devicePadding.top),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text('Cart', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder:(context,index){
                    return CustomAddedCartItem(
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
