import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hm_prof/widgets/card_product.dart';
import 'package:hm_prof/widgets/categories.dart';
import 'package:hm_prof/widgets/custom_nav_bar.dart';
import 'package:hm_prof/widgets/custom_text_field.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: heightScreen * (48 / 812)),
                Center(
                  child: CustomTextField(width: 335),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: heightScreen * (32 / 812),
                    left: widthScreen * (20 / 375),
                    bottom: heightScreen * (16 / 812),
                  ),
                  child: Text(
                    'Акции и новости',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(147, 147, 150, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: widthScreen * (20 / 375),
                          right: widthScreen * (16 / 375),
                        ),
                        height: heightScreen * (152 / 812),
                        width: widthScreen * (270 / 375),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(151, 217, 240, 1),
                              Color.fromRGBO(146, 233, 212, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: heightScreen * (16 / 812),
                              left: widthScreen * (16 / 375),
                              child: SizedBox(
                                width: 100,
                                height: 56,
                                child: Text(
                                  'Шорты Вторник',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: heightScreen * (112 / 812),
                              left: widthScreen * (16 / 375),
                              child: Text(
                                '4000 ₽',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Positioned(
                              left: widthScreen * (135 / 375),
                              child: Image.asset(
                                'images/covid.png',
                                width: 146,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: heightScreen * (152 / 812),
                        width: widthScreen * (270 / 375),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(118, 179, 255, 1),
                              Color.fromRGBO(205, 227, 255, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: heightScreen * (32 / 812),
                    left: widthScreen * (20 / 375),
                  ),
                  child: Text(
                    'Каталог описаний',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(147, 147, 150, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: heightScreen * (15 / 812),
                    bottom: heightScreen * (24 / 812)
                  ),
                    child: Categories()),
                CardProduct(),
                CardProduct(),
              ],
            ),
          ),
          CustomNavBar(active: 1),
        ],
      ),
    );
  }
}
