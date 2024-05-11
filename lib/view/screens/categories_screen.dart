import 'package:e_shop/constant/constant_text.dart';
import 'package:e_shop/core/services/api_services.dart';
import 'package:e_shop/models/product_model.dart';
import 'package:e_shop/view/itemview/categories_item_text.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  // List<String> categoriesText =[
  //   'TShirt',
  //   'Sneakers',
  //   'Cargo Pants',
  //   'Mans Shorts',
  //   'Mans Checked Shirt',
  //   'Slipper'
  //
  //
  // ];
  // List<String> categoriesImages =[
  //   'https://image.spreadshirtmedia.com/image-server/v1/products/T210A16PA4301PT17X31Y29D11844449W26881H26881Cx000000/views/1,width=550,height=550,appearanceId=16,backgroundColor=F2F2F2,modelId=1147,crop=list/jesus-hd-vector-mens-t-shirt.jpg',
  //   'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c20afd60-b230-4815-bfd2-6768c875f6cd/air-force-1-07-shoes-0XGfD7.png',
  //   'https://m.media-amazon.com/images/I/81Ax3qHF-cL.jpg',
  //   'https://image1.superdry.com/static/images/optimised/upload9223368955666055484.jpg',
  //   'https://cdn.hinative.com/attached_images/16159/0f5eb957df3dbcf87d64bc28b50a66ce3eecf851/large.jpeg?1457997792',
  //   'https://www.batabd.com/cdn/shop/products/2_3bfb6dd1-bfd2-42a1-b6ae-d9c0352b0627_grande.jpg?v=1650172194',
  //
  //
  // ];

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    final ApiServices _apiServices = ApiServices();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.only(top: padding.top,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text('Categories', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ),
              FutureBuilder(builder: (context, snapshot){
                if(snapshot.hasData){
                  List<Category> _categories = snapshot.data ?? [];
                  return GridView.builder(
                    padding: EdgeInsets.only(top: 10),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return CategoriesItemText(
                        category: _categories[index]
                      );
                    },
                  );
                }else {
                  return Center(child: Text('no data found..!'),);
                }
              },
                future: _apiServices.getCategory(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
