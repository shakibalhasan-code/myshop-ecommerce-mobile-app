import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';

class CategoryItemView extends StatelessWidget {
  final String imageUrl;
  const CategoryItemView({super.key, required this.imageUrl});

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
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              CachedNetworkImage(
                  imageUrl: imageUrl,
                placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder image while loading

              )
            ],
          ),
        ),
      ),
    );
  }
}
