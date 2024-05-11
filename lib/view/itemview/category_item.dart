import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  final Category category;
  const CategoryItemView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: defaultGreyColor
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            width: double.infinity,
            imageUrl: '${category.image}',
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder image while loading
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
