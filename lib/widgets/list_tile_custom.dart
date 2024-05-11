import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final String titleText;
  final String? subTitle;
  final IconData profileIcon;
  final IconData? icon;
  final double iconSize;
  const ListTileCustom({super.key, required this.titleText, this.subTitle, required this.profileIcon, required this.iconSize, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                height: iconSize,
                imageUrl: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',

              )
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleText,style: h1text,),
                Text('Shewrapara, Mirpur')
              ],
            ),
            Spacer(),
            Icon(icon,color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}
