
import 'dart:ui';
import 'package:icha_store/profiles.dart';
import 'package:icha_store/smartphones.dart';

import 'categories.dart';
import 'package:flutter/material.dart';

import 'components/bottomNavigation.dart';
import 'components/label.dart';
import 'computercases.dart';
import 'headsets.dart';
import 'monitors.dart';

class HomePage extends StatefulWidget {
   String? categoryTitle;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                //BAŞLIK
                buildBaslik(),

                //BANNER
                buildBanner(),
                //BUTONLAR
                Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //ilk eleman
                      buildNavigation(text: "Favorites", icon: Icons.star_border,widget: CategoriesPage(),context: context,),
                      //ikinci eleman
                      buildNavigation(text: "Categories", icon: Icons.menu,widget: CategoriesPage(),context: context,),
                      //üçüncü eleman
                      buildNavigation(text: "Gifts", icon: Icons.card_giftcard,widget: CategoriesPage(),context: context,),
                      //dördüncü eleman
                      buildNavigation(text: "Profiles", icon: Icons.person_outline_rounded,widget: ProfilePage(),context: context,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                //SALES TİTLE

                Text(
                  "Sales",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF0A1034)),
                ),
                //SALES İTEMS

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildSmartPhone(
                        text: "Smart Phones",
                        photoUrl: "assets/images/smartphone.jpg",
                        discount: "-50%",context: context),
                    buildMonitor(
                        text: "Monitors",
                        photoUrl: "assets/images/monitor.jpg",
                        discount: "-30%",context: context),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildHeadset(
                        text: "Headsets",
                        photoUrl: "assets/images/kulaklik.jpg",
                        discount: "-20%",context: context),
                    buildCase(
                        text: "Computer Cases",
                        photoUrl: "assets/images/case.jpg",
                        discount: "-17%",context: context),
                  ],
                ),
                SizedBox(height: 100),

              ],
            ),
          ),
          //BOTTOM NAVİGATİON
          bottomNavigationBar("home"),
        ],
      ),
    ));
  }
}



Widget buildBaslik() {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Text(
      "Home",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Color(0xFF98FB98B), borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Icha Smart Phone",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "USD 200",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset("assets/images/smartphone.jpg")
        ],
      ),
    ),
  );
}

Widget buildSmartPhone({
  required String text,
  required String photoUrl,
  required String discount,
  context
}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return SmartPhonePage("");
      }));
    },
    child: Container(
      padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        children: [
          label(discount),
          SizedBox(height: 22),
          Image.asset(photoUrl),
          SizedBox(height: 22),
          Center(
              child: Text(text,
                  style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)))),
        ],
      ),

    ),
  );

}

Widget buildNavigation(
    {required String text, required IconData icon, required Widget widget,required BuildContext context,})
{
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: (EdgeInsets.symmetric(horizontal: 19, vertical: 22)),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),

        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget buildMonitor({
  required String text,
  required String photoUrl,
  required String discount,
  context
}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return MonitorPage("");
      }));
    },
    child: Container(
      padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        children: [
          label(discount),
          SizedBox(height: 22),
          Image.asset(photoUrl),
          SizedBox(height: 22),
          Center(
              child: Text(text,
                  style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)))),
        ],
      ),

    ),
  );
}

Widget buildHeadset({
  required String text,
  required String photoUrl,
  required String discount,
  context
}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HeadsetPage("");
      }));
    },
    child: Container(
      padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        children: [
          label(discount),
          SizedBox(height: 22),
          Image.asset(photoUrl),
          SizedBox(height: 22),
          Center(
              child: Text(text,
                  style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)))),
        ],
      ),

    ),
  );
}

Widget buildCase({
  required String text,
  required String photoUrl,
  required String discount,
  context
}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return CasePage("");
      }));
    },
    child: Container(
      padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        children: [
          label(discount),
          SizedBox(height: 22),
          Image.asset(photoUrl),
          SizedBox(height: 22),
          Center(
              child: Text(text,
                  style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)))),
        ],
      ),

    ),
  );
}