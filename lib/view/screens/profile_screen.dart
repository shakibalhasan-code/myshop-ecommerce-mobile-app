import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/styles/text_style.dart';
import 'package:e_shop/widgets/list_tile_custom.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: devicePadding.top, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text('Profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10,),
              ListTileCustom(
                profileIcon: Icons.person,
                  titleText: 'Shakib Al Hasan',
                  icon: Icons.edit,
                  iconSize: 50),
              Divider(),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Account',style: h1text,),
                      SizedBox(height: 8,),
                      ListTile(
                        leading: Icon(Icons.list_alt_rounded,color: Colors.blue,),
                        title: Text('Orders'),
                        trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on_sharp,color: Colors.blue,),
                        title: Text('Address'),
                        trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                      ),
                      ListTile(
                        leading: Icon(Icons.message,color: Colors.blue,),
                        title: Text('Messages'),
                        trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications,color: Colors.blue,),
                        title: Text('Notification'),
                        trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                      ),
                      ListTile(
                        leading: Icon(Icons.key,color: Colors.blue,),
                        title: Text('Change Password'),
                        trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
