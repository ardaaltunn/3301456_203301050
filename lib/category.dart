import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:icha_store/components/header.dart';
import 'package:icha_store/productDetail.dart';

import 'components/bottomNavigation.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;
  CategoryPage(this.categoryTitle);
  List<Map> products = [
    {
      "isim": "Surface Laptop 3",
      "fotograf": "assets/images/laptop.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface Laptop 4 ",
      "fotograf": "assets/images/laptop.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface Laptop 5 ",
      "fotograf": "assets/images/laptop.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface Laptop 6 ",
      "fotograf": "assets/images/laptop.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface Laptop 7 ",
      "fotograf": "assets/images/laptop.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface Laptop 8 ",
      "fotograf": "assets/images/laptop.jpg",
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
              header(categoryTitle, context),
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

Widget buildContent(String title, String photoUrl, String price,context) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return ProductDetailPage(title);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16))
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 16),
          Image.asset(photoUrl),
          SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Color(0xFF0A1034),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "USD $price",
                style: TextStyle(
                    color: Color(0xFF0001FC),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
