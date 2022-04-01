import 'package:flutter/material.dart';
import 'package:icha_store/category.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';
class HeadsetPage extends StatelessWidget {


  String categoryTitle;
  HeadsetPage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": "Logitech G332",
      "fotograf": "assets/images/logitechg332.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Gamepower Medusa ",
      "fotograf": "assets/images/gamepowermedusa.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Razer Kraken Ultimate ",
      "fotograf": "assets/images/razerkraken.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Asus Tuf Gaming H3  ",
      "fotograf": "assets/images/asustufh3.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Gamepower Kizaru ",
      "fotograf": "assets/images/gamepowerkizaru.jpg",
      "fiyat": "999"
    },
    {
      "isim": "HyperX Cloud 2 ",
      "fotograf": "assets/images/hyperx.jpg",
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
                      header("Headsets", context),
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

