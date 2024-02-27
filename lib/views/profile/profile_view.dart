import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/const.dart';
import 'package:plant_shop_app/themes/colors/color.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: ThemeColor.awesomeColor.withOpacity(.6),
                        spreadRadius: 6,
                        blurRadius: 6)
                  ]),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/ProfilePic.jpg'),
              ),
            ),
            sh(30),
            itemProfile('Name', 'NOU Sereyvathanak', CupertinoIcons.person),
            sh(15),
            itemProfile('Phone', '096 901 6182', CupertinoIcons.phone),
            sh(15),
            itemProfile(
                'Address', 'Toul Kork, Phnom Penh', CupertinoIcons.location),
            sh(15),
            itemProfile('Email', 'vathanak7398@gmail.com', CupertinoIcons.mail),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 3),
                color: ThemeColor.awesomeColor.withOpacity(.6),
                spreadRadius: 3,
                blurRadius: 6)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey),
        tileColor: Colors.white,
      ),
    );
  }
}
