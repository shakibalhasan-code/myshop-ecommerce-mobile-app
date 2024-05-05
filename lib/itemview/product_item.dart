import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/button.dart';
import 'package:e_shop/widgets/icon_box.dart';
import 'package:flutter/material.dart';

class ItemProductView extends StatelessWidget {
  final VoidCallback onTap;
  const ItemProductView({Key? key, required this.onTap});

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
                          tag: 'product-image',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c20afd60-b230-4815-bfd2-6768c875f6cd/air-force-1-07-shoes-0XGfD7.png',
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
                'Classic Heather Gray Hoodie',
                style: productTitleH2.copyWith(fontSize: 16), // Adjust text size
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '\$90.00',
                style: productpriceH2.copyWith(fontSize: 14), // Adjust text size
              ),
              const SizedBox(height: 8),
              const CustomButton(color: Colors.black, child: Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Icon(Icons.add_shopping_cart_rounded,color: Colors.white,size: 20,),
                  SizedBox(width: 8,),
                  Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                  ),)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
