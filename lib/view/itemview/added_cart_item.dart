import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomAddedCartItem extends StatelessWidget {
  const CustomAddedCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5,top: 5),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(imageUrl: 'https://rosetech.com.bd/wp-content/uploads/2023/04/M24FD-2.jpg'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                // Ensures that this row occupies the remaining horizontal space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HP 24" Monitor Full Hd',
                      maxLines: 2,
                      style: h1text,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text('Brand', style: h3text),
                        SizedBox(width: 5,),
                        Text('HP', style: h3textBlue),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add,size: 16,),
                            SizedBox(width: 8,),
                            Text('1',style: h3textBlue,),
                            SizedBox(width: 8,),
                            Icon(Icons.remove,size: 16,),

                          ],
                        ),
                        Spacer(),
                        Icon(Icons.delete,size: 18,color: Colors.red,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
