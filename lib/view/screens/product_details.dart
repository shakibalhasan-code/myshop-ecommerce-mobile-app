import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/grey_rounded_shape.dart';
import 'package:e_shop/widgets/icon_circle_shape.dart';
import 'package:e_shop/widgets/icon_button.dart';
import 'package:e_shop/widgets/outline_border.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                              tag: '${productModel.id}',
                              child: CachedNetworkImage(
                                width: double.infinity,
                                imageUrl: 'https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/j/u/w/7-1522-multi-shozie-multicolor-original-imagegdaad9g8mvs-bb.jpeg?q=90&crop=false',
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder image while loading
                                errorWidget: (context, url, error) => Icon(Icons.error),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 15,
                              right: 15,
                              child: Row(
                                children: [
                                  CustomIconCircleShape(containerColor: Colors.white.withOpacity(0.5), icon: Icons.arrow_back_ios_new_rounded,onTap: (){
                                    Navigator.pop(context);
                                  }, ),
                                  Spacer(
                                  ),
                                  CustomIconCircleShape(containerColor: Colors.white.withOpacity(0.5), icon: Icons.ios_share_rounded,onTap: (){

                                  },)
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
                              Text(productModel.title ?? 'null',style: h1text),
                              Text('${productModel.category?.name?? 'null'}',style: h3textBlue),
                              Divider(),
                              Row(
                                children: [
                                  CustomOutLineWidget(child: Row(
                                    children: [
                                      Icon(Icons.star_rate,color: Colors.green,size: 20,),
                                      SizedBox(width: 5,),
                                      Text('4.5',style: h3text,),
                                      SizedBox(width: 5,),
                                      Text('180 Reviews'),
                                    ],
                                  )),
                                  SizedBox(width: 10,),
                                  CustomOutLineWidget(child: Row(
                                    children: [
                                      Icon(Icons.favorite_outlined,color: Colors.red,size: 18,),
                                      SizedBox(width: 5),
                                      Text('97%',style: h3text,)
                                    ],
                                  )),
                                  Spacer(),
                                  CustomOutLineWidget(child: Row(
                                    children: [
                                      Icon(Icons.question_answer,color: Colors.grey,size: 18,),
                                      SizedBox(width: 5,),
                                      Text('48',style: h3text,)
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(height: 20,),
                              GreyRoundedShape(child: Row(
                                children: [
                                  Text('\$${productModel.price}',style: productpriceH2,),
                                  SizedBox(width: 10,),
                                  Text('from \$5 per month'),
                                  Spacer(),
                                  Icon(Icons.info)
                                ],
                              )),
                              SizedBox(height: 15,),
                              Text(productModel.description!),
                              SizedBox(height: 15,),


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,bottom:padding.bottom+10,top: 5 ),
              child: Container(
                  width: double.infinity,
                  child: CustomIconButton(
                    color: defaultMainColor,
                    icon: Icons.add_shopping_cart_rounded,
                    text: 'Add to cart',
                    textColor: Colors.black,
                    iconColor: Colors.black,
                    buttonHeight: 50,
                    iconSize: 20,
                    textSize: 18,
                  )
              ),
            )
          ],
        )
    );
  }
}
