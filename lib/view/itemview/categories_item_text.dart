import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class CategoriesItemText extends StatelessWidget {
  final Category category;
  const CategoriesItemText({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: category.image.toString(),
                    fit: BoxFit.cover,
                    placeholder: (context,url)=>const Center( child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),

                  ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Text(category.name.toString(),style: productpriceH2,textAlign: TextAlign.center,)
          ],
        ),
      )
    );
  }
}
