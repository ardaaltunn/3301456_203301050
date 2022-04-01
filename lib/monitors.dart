import 'package:flutter/material.dart';
import 'package:icha_store/category.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';
class MonitorPage extends StatelessWidget {


  String categoryTitle;
  MonitorPage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": " AOC 27G2U5",
      "fotograf": "assets/images/aoc27g2u5.jpg",
      "fiyat": "999"
    },
    {
      "isim": " Samsung Space Monitor",
      "fotograf": "assets/images/spacemonitor.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Lenovo ThinkVision M14 ",
      "fotograf": "assets/images/lenovothinkvision.jpg",
      "fiyat": "999"
    },
    {
      "isim": "AOC U2790PQU ",
      "fotograf": "assets/images/aocu2790pqu.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Asus Tuf Gaming VG249Q ",
      "fotograf": "assets/images/asustufmonitor.jpg",
      "fiyat": "999"
    },
    {
      "isim": " ASUS Designo MZ27AQ",
      "fotograf": "assets/images/asusdesigno.jpg",
      "fiyat": "999"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Header
                      header("Monitors", context),
                      SizedBox(height: 32),
                      //İçerikler
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          children: products.map((Map product) {
                            return buildContent(
                                product["isim"], product["fotograf"], product["fiyat"],context);
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 70),

                    ],
                  )),
              //Bottom Navigation
              bottomNavigationBar("search"),
            ])));
  }
}

