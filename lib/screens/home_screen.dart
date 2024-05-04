import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/itemview/category_item.dart';
import 'package:e_shop/itemview/product_item.dart';
import 'package:e_shop/itemview/slider_image_item.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/grey_box.dart';
import 'package:e_shop/widgets/grey_icon_box.dart';
import 'package:e_shop/widgets/main_icon_box.dart';
import 'package:e_shop/widgets/main_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {

  List<String> coverImages = [
    'https://i.postimg.cc/J4ZksYYg/439462020-841030424718759-221784.png',
    'https://i.postimg.cc/GmjTQ8Cx/439646574-841713371317131-427546.png',
    'https://i.postimg.cc/FKsdnrF5/441060592-844937050994763-339628.png',
  ];

  List<String> categoriesIcon = [
    'https://cdn-icons-png.freepik.com/256/5521/5521112.png?semt=ais_hybrid',
    'https://cdn-icons-png.freepik.com/256/2742/2742674.png?semt=ais_hybrid',
    'https://cdn-icons-png.flaticon.com/512/5258/5258076.png',
    'https://cdn-icons-png.flaticon.com/512/428/428001.png',
  ];


  @override
  Widget build(BuildContext context) {
    final EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(
              top: devicePadding.top, bottom: devicePadding.bottom),
          child: Container(
            color: defaultGreyColor,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30)),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            MainCustomIconBox(icon: Icons.settings),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Delivery Address',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  'Shewrapara,Mirpur',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            GreyCustomIconBox(icon: Icons.notifications_active)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 16/9,
                              enlargeCenterPage: true,

                            ),
                            items: coverImages.map((url){
                              return SliderImages(url: url);
                            }).toList()
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                       const  Padding(padding: const EdgeInsets.only(left: 15,right:15 ,top: 15,bottom: 5),
                        child: Row(
                          children: [
                            Text(
                              'Categories',
                              style: h1text,
                            ),
                            Spacer(),
                            Text('See all'),
                            Icon(Icons.arrow_forward_ios,size: 13,)
                          ],
                        ),
                        ),
                        SizedBox(
                          height: 80, // Set a fixed height for the ListView
                          child: ListView.builder(
                            itemCount: categoriesIcon.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: CategoryItemView(
                                  imageUrl: categoriesIcon[index],
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 10,),
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                'Flash Sale',
                                style: h1text,
                              ),
                              SizedBox(width: 8,),
                              Spacer(),
                              Text('See all'),
                              Icon(Icons.arrow_forward_ios,size: 13,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, // Number of columns
                                mainAxisSpacing: 5, // Spacing between rows
                                crossAxisSpacing: 5, // Spacing between columns
                                childAspectRatio: 0.7, // Aspect ratio of the items (width / height) adjust this ratio as per your need
                              ),
                              itemCount: 10, // Total number of items
                              itemBuilder: (context, index) {
                                return ItemProductView();
                              },
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
