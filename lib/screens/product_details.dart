import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/button.dart';
import 'package:e_shop/widgets/grey_box.dart';
import 'package:e_shop/widgets/icon_box.dart';
import 'package:e_shop/widgets/outline_border.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: padding.top,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Stack(
                  children: [
                    Hero(
                      tag: 'product-image',
                      child: CachedNetworkImage(
                        imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c20afd60-b230-4815-bfd2-6768c875f6cd/air-force-1-07-shoes-0XGfD7.png',

                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 5,
                      right: 15,
                      child: Row(
                        children: [
                          CustomIconBox(containerColor: Colors.white, child: Icon(Icons.arrow_back_ios_new_rounded
                          )),
                          Spacer(
                          ),
                          CustomIconBox(containerColor: Colors.white, child: Icon(Icons.ios_share_rounded
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration:const  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Classic Heather Gray Hoodie',style: h1text),
                      Divider(),
                      Row(
                        children: [
                          CustomOutLineWidget(child: Row(
                            children: [
                              Icon(Icons.star_rate,color: Colors.green,),
                              SizedBox(width: 5,),
                              Text('4.5'),
                              SizedBox(width: 5,),
                              Text('180 Reviews'),
                            ],
                          )),
                          SizedBox(width: 10,),
                          CustomOutLineWidget(child: Row(
                            children: [
                              Icon(Icons.favorite_outlined,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text('97%')
                            ],
                          )),
                          Spacer(),
                          CustomOutLineWidget(child: Row(
                            children: [
                              Icon(Icons.question_answer),
                              SizedBox(width: 5,),
                              Text('48')
                            ],
                          )),
                        ],
                      ),
                      SizedBox(height: 20,),
                      GreyBoxShape(child: Row(
                        children: [
                          Text('\$99',style: productpriceH2,),
                          SizedBox(width: 10,),
                          Text('from \$5 per month'),
                          Spacer(),
                          Icon(Icons.info)
                        ],
                      )),
                      SizedBox(height: 15,),
                      Text('Step up your game with Nike shoes, the epitome of style and performance. Crafted with precision and innovation, Nike shoes boast unparalleled comfort and durability. From the court to the streets, Nike\'s iconic designs make a statement wherever you go. Elevate your sneaker collection with the perfect blend of athleticism and fashion.'),
                      SizedBox(height: 15,),
                      CustomButton(color: defaultMainColor, child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_shopping_cart_rounded),
                            SizedBox(width: 5,),
                            Text('Add to Cart',style: h1text,)
                          ],
                        ),
                      ))

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
