import 'package:e_shop/view/screens/cart_screen.dart';
import 'package:e_shop/view/screens/categories_screen.dart';
import 'package:e_shop/view/screens/profile_screen.dart';
import 'package:e_shop/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();

}

class _TabScreenState extends State<TabScreen> {
  int _currentindex= 0;
  List<Widget> currentWidgets = [
    HomeScreen(),
  CategoriesScreen(),
  CartScreen(),
  ProfileScreen()
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets devicePadding = MediaQuery.paddingOf(context);

    return Scaffold(
      body: currentWidgets.elementAt(_currentindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black)]
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15,right: 15,bottom: 20,top: 10),
          child: GNav(
            onTabChange: (index){
              setState(() {
                _currentindex = index;
              });
            },
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade300,
            gap: 8,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            tabs: [
              GButton(icon: Icons.home_filled,text: 'Home',),
              GButton(icon: Icons.category_rounded,text: 'Categories',),
              GButton(icon: Icons.shopping_cart_rounded,text: 'Cart',),
              GButton(icon: Icons.person,text: 'Person',),
            ],
          ),
        ),
      )
    );
  }
}
