import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SliderImages extends StatelessWidget {
  final String url;
  const SliderImages({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            placeholder: (context, url) => Center(child: CircularProgressIndicator()), // Placeholder image while loading
            imageUrl: url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
