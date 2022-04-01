import 'package:flutter/material.dart';
import 'package:icha_store/category.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';
class SmartPhonePage extends StatelessWidget {


  String categoryTitle;
  SmartPhonePage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": "Iphone 11",
      "fotograf": "assets/images/iphone_11.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Huawei Mate Xs",
      "fotograf": "assets/images/huaweixs.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Samsung Galaxy Z Fold 3 ",
      "fotograf": "assets/images/samsungfold3.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Iphone 13 Pro",
      "fotograf": "assets/images/iphone13pro.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Samsung Galaxy S21 Ultra ",
      "fotograf": "assets/images/samsungs21ultra.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Xiaomi Mi 11 Ultra ",
      "fotograf": "assets/images/xiaomi11ultra.jpg",
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
                      header("Smart Phones", context),
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

