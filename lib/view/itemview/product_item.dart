import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/icon_circle_shape.dart';
import 'package:e_shop/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class ItemProductView extends StatelessWidget {
  final VoidCallback onTap;
  final ProductModel productModel;

  const ItemProductView({Key? key, required this.onTap, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Hero(
                          tag: '${productModel.id}',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              imageUrl: 'https://rukminim2.flixcart.com/image/850/1000/xif0q/shoe/j/u/w/7-1522-multi-shozie-multicolor-original-imagegdaad9g8mvs-bb.jpeg?q=90&crop=false',
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder image while loading
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(Icons.favorite_outline_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                productModel.title ?? 'Error to get data',
                style: productTitleH2.copyWith(fontSize: 16), // Adjust text size
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '\$${productModel.price}',
                style: productpriceH2.copyWith(fontSize: 14), // Adjust text size
              ),
              const SizedBox(height: 8),
              const CustomIconButton(
                color: Colors.black,
                buttonHeight: 40,
                icon: Icons.add_shopping_cart_rounded,
                iconColor: Colors.white,
                text: 'Add to cart',
                textColor: Colors.white,
                iconSize: 18,
                textSize: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
