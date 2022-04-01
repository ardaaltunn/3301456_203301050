
import 'package:flutter/material.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';

import 'components/label.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;
  ProductDetailPage(this.productTitle);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<Color> colors = [
    Color(0xFF52514F),
    Color(0xFF0001FC),
    Color(0xFF6F7972),
    Color(0xFFF5D8C0),
  ];
  List<int> capacities = [64, 256, 512];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //Header
            header(widget.productTitle, context),
            SizedBox(height: 32),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView(

                  children: [
                    //New Etiketi

                    label("New"),
                    //Ürün Fotoğrafı
                    Center(child: Image.asset("assets/images/iphone.png")),
                    SizedBox(height: 25),
                    //RENK SEÇENEKLERİ
                    Text(
                      "Color",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: colors
                            .map((Color color) => colorOption(
                                color: color,

                                ))
                            .toList()),

                    //KAPASİTE SEÇENEKLERİ
                    SizedBox(height: 32),
                    Text(
                      "Capacity",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: capacities
                          .map((int number) => capacityOption(
                              capacity: number,

                              ))
                          .toList(),
                    ),
                    SizedBox(height: 32),

                    //SEPETE EKLE BUTONU
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF1F53E4)),
                      child: Text("Add to cart",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(height: 100),

                  ],
                ),
              ),
            ),
          ])),
              bottomNavigationBar("search"),

            ])));
  }
}

Widget colorOption(
    {required Color color}) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border:
              Border.all(color: Color(0xFF0001FC), width: 1 )),
      width: 23,
      height: 23,
    ),
  );
}

Widget capacityOption(
    {required int capacity}) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "$capacity gb",
        style: TextStyle(
            color: Color(0xFF0001FC ), fontSize: 16),
      ),
    ),
  );
}
