import 'package:flutter/material.dart';
import 'package:icha_store/category.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';
class CasePage extends StatelessWidget {


  String categoryTitle;
  CasePage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": "Power Boost VK-P1900B",
      "fotograf": "assets/images/powerboostvkp1900b.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Corsair Icue 220T ",
      "fotograf": "assets/images/corsairicue.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Rampage Carisma Mesh ",
      "fotograf": "assets/images/rampagecarismamesh.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Frisby FC-8890G ",
      "fotograf": "assets/images/frisbyfc8890g.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Aerocool Atomic ",
      "fotograf": "assets/images/aerocoolatomic.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Corsair Carbide Spec-05 ",
      "fotograf": "assets/images/corsaircarbide.jpg",
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
                      header("Computer Cases", context),
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

